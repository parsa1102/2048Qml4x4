#include "gamebackend.h"

gameBackend::gameBackend(QObject *parent)
    : QObject{parent}
{
    makeGameState();

}

void gameBackend::makeGameState()
{
    QVector<qint64> tmp;
    for(int i=0;i<4;i++)
        tmp.append(0);

    tmp[2] = 2;
    tmp[3] = 2;
    gameState.append(tmp);
    tmp[2] = 0;
    gameState.append(tmp);
    tmp[3] = 0;
    gameState.append(tmp);
    gameState.append(tmp);
}

bool gameBackend::luck()
{
    qint64 rand = QRandomGenerator::global()->bounded(2);
    if(rand == 1)
        return true;
    return false;
}


void gameBackend::righClicked()
{
    for(int j=0;j<4;j++){
        bool moveOccured = false;
        //qInfo()<<"j"<<QString::number(j);
        for(int i=0;i<3;i++){
            //qInfo()<<QString::number(i);
            if(gameState[j][i] == gameState[j][i+1] && gameState[j][i] != 0){
                gameState[j][i]=0;
                gameState[j][i+1] *= 2;
                i++;
                moveOccured = true;
            }
        }
        qint64 q = 10;
        while(q--){
            for(int i=2;i>=0;i--){
                if(gameState[j][i] != 0 && gameState[j][i+1]==0){
                    gameState[j][i+1] = gameState[j][i];
                    gameState[j][i] = 0;
                }
            }
        }
        if(gameState[j][0] == 0){
            if(luck()){
                for(int i=3;i>=0;i--){
                    if(gameState[j][i] == 0){
                        gameState[j][i] = 2;
                        break;
                    }
                }
            }
        }

    }
}

void gameBackend::leftClicked()
{
    for(int j=0;j<4;j++){
        bool moveOccured = false;
        //qInfo()<<"j"<<QString::number(j);
        for(int i=3;i>=1;i--){
            //qInfo()<<QString::number(i);
            if(gameState[j][i] == gameState[j][i-1] && gameState[j][i] != 0){
                gameState[j][i]=0;
                gameState[j][i-1] *= 2;
                i++;
                moveOccured = true;
            }
        }
        QVector<qint64> tmp;
        for(int i=0;i<4;i++){
            if(gameState[j][i]!=0)
                tmp.append(gameState[j][i]);
        }
        for(int i=0;i<4;i++){
            if(i<tmp.size()){
                gameState[j][i] = tmp[i];
            }else{
                gameState[j][i] = 0;
            }
        }
        qint64 q = 10;
        while(q--){
            for(int i=1;i<4;i++){
                if(gameState[j][i] != 0 && gameState[j][i-1]==0){
                    gameState[j][i-1] = gameState[j][i];
                    gameState[j][i] = 0;
                }
            }
        }
        if(gameState[j][0] == 0){
            if(luck()){
                for(int i=0;i<4;i++){
                    if(gameState[j][i] == 0){
                        gameState[j][i] = 2;
                        break;
                    }
                }
            }
        }

    }
}

void gameBackend::upClicked()
{
    for(int j=0;j<4;j++){
        bool moveOccured = false;
        for(int i=3;i>=1;i--){
            if(gameState[i][j] == gameState[i-1][j]){
                gameState[i-1][j] *= 2;
                gameState[i][j] = 0;
                i--;
                moveOccured = true;
            }
        }
        int q = 10;
        while(q--){
            for(int i=1;i<4;i++){
                if(gameState[i][j] != 0 && gameState[i-1][j] == 0){
                    gameState[i-1][j] = gameState[i][j];
                    gameState[i][j] =0;
                }
            }
        }
        if(gameState[3][j] == 0){
            if(luck()){
                bool flag = false;
                for(int i=3;i>=0;i--){
                    if(gameState[i][j] != 0){
                        gameState[i+1][j] = 2;
                        flag = true;
                        break;
                    }
                }
                if(!flag)
                    gameState[0][j] = 2;
            }
        }
    }
}

void gameBackend::downClicked()
{
    for(int j=0;j<4;j++){
        bool moveOccured = false;
        for(int i=0;i<3;i++){
            if(gameState[i][j] == gameState[i+1][j]){
                gameState[i+1][j] *= 2;
                gameState[i][j] = 0;
                i++;
                moveOccured = true;
            }
        }
        int q = 10;
        while(q--){
            for(int i=2;i>=0;i--){
                if(gameState[i][j] != 0 && gameState[i+1][j] == 0){
                    gameState[i+1][j] = gameState[i][j];
                    gameState[i][j] =0;
                }
            }
        }
        if(gameState[0][j] == 0){
            if(luck()){
                bool flag = false;
                qInfo()<<"here we are";
                for(int i=0;i<4;i++){
                    if(gameState[i][j] != 0){
                        gameState[i-1][j] = 2;
                        flag = true;
                        break;
                    }
                }
                if(!flag)
                    gameState[3][j] = 2;
            }
        }
    }
}

int gameBackend::getCurr(int x, int y)
{
    return gameState[x][y];
}
