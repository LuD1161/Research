.class public Lorg/cdot/diu/main/MyApp;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, LR2/d;

    invoke-direct {v0}, LR2/d;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LR2/d;->m(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LR2/d;->f(Landroid/content/Context;[Ljava/lang/String;)V

    new-instance v1, Lio/flutter/embedding/engine/a;

    invoke-direct {v1, p0}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->k()LP2/a;

    move-result-object v2

    new-instance v3, LP2/a$c;

    invoke-virtual {v0}, LR2/d;->g()Ljava/lang/String;

    move-result-object v0

    const-string v4, "backgroundMain"

    invoke-direct {v3, v0, v4}, LP2/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, LP2/a;->j(LP2/a$c;)V

    invoke-static {}, LO2/a;->b()LO2/a;

    move-result-object v0

    const-string v2, "my_engine"

    invoke-virtual {v0, v2, v1}, LO2/a;->c(Ljava/lang/String;Lio/flutter/embedding/engine/a;)V

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Offline Data Submission"

    const/4 v2, 0x3

    const-string v3, "offline_data_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "Notifies when offline Hive data is sent"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, LQ0/b$a;

    invoke-direct {v0}, LQ0/b$a;-><init>()V

    sget-object v1, LQ0/j;->f:LQ0/j;

    invoke-virtual {v0, v1}, LQ0/b$a;->b(LQ0/j;)LQ0/b$a;

    move-result-object v0

    invoke-virtual {v0}, LQ0/b$a;->a()LQ0/b;

    move-result-object v0

    new-instance v1, LQ0/n$a;

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-class v5, Lorg/cdot/diu/main/NetworkWorker;

    invoke-direct {v1, v5, v2, v3, v4}, LQ0/n$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v1, v0}, LQ0/u$a;->h(LQ0/b;)LQ0/u$a;

    move-result-object v0

    check-cast v0, LQ0/n$a;

    invoke-virtual {v0}, LQ0/u$a;->a()LQ0/u;

    move-result-object v0

    check-cast v0, LQ0/n;

    invoke-static {p0}, LQ0/t;->d(Landroid/content/Context;)LQ0/t;

    move-result-object v1

    const-string v2, "NetworkTask"

    sget-object v3, LQ0/c;->f:LQ0/c;

    invoke-virtual {v1, v2, v3, v0}, LQ0/t;->c(Ljava/lang/String;LQ0/c;LQ0/n;)LQ0/l;

    return-void
.end method
