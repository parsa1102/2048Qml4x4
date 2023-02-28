#ifndef GAMEBACKEND_H
#define GAMEBACKEND_H

#include <QObject>
#include <QDebug>
#include <QRandomGenerator>

class gameBackend : public QObject
{
    Q_OBJECT
public:
    explicit gameBackend(QObject *parent = nullptr);

private:
    void makeGameState();
    bool luck();
    QVector<QVector<qint64>> gameState;

signals:

public slots:
    void righClicked();
    void leftClicked();
    void upClicked();
    void downClicked();
    int getCurr(int x , int y);

};

#endif // GAMEBACKEND_H
