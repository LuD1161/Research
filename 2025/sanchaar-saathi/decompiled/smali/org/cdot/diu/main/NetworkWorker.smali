.class public Lorg/cdot/diu/main/NetworkWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static synthetic q(Lorg/cdot/diu/main/NetworkWorker;)V
    .locals 0

    invoke-virtual {p0}, Lorg/cdot/diu/main/NetworkWorker;->s()V

    return-void
.end method


# virtual methods
.method public o()Landroidx/work/c$a;
    .locals 3

    invoke-virtual {p0}, Lorg/cdot/diu/main/NetworkWorker;->r()Z

    move-result v0

    const-string v1, "NetworkWorker"

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u274c No network available. Skipping Hive data submission."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroidx/work/c$a;->b()Landroidx/work/c$a;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Network is ONLINE\u2014NetworkWorker fired------Adam logs"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "\u2705 Network is ONLINE\u2014NetworkWorker fired"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LQ3/a;

    invoke-direct {v1, p0}, LQ3/a;-><init>(Lorg/cdot/diu/main/NetworkWorker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroidx/work/c$a;->c()Landroidx/work/c$a;

    move-result-object v0

    return-object v0
.end method

.method public final r()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/work/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final synthetic s()V
    .locals 4

    invoke-static {}, LO2/a;->b()LO2/a;

    move-result-object v0

    const-string v1, "my_engine"

    invoke-virtual {v0, v1}, LO2/a;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NetworkWorker"

    const-string v1, "Flutter engine not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, LY2/j;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()LP2/a;

    move-result-object v0

    invoke-virtual {v0}, LP2/a;->l()LY2/b;

    move-result-object v0

    const-string v2, "org.cdot.diu.main/hive"

    invoke-direct {v1, v0, v2}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

    new-instance v0, Lorg/cdot/diu/main/NetworkWorker$a;

    invoke-direct {v0, p0}, Lorg/cdot/diu/main/NetworkWorker$a;-><init>(Lorg/cdot/diu/main/NetworkWorker;)V

    const-string v2, "submitOfflineData"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, LY2/j;->d(Ljava/lang/String;Ljava/lang/Object;LY2/j$d;)V

    return-void
.end method
