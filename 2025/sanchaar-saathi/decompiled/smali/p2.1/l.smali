.class public final Lp2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/b;


# instance fields
.field public final a:Lp2/w;

.field public final b:Lp2/i;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lp2/w;Lp2/i;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lp2/l;->d:Landroid/os/Handler;

    iput-object p1, p0, Lp2/l;->a:Lp2/w;

    iput-object p2, p0, Lp2/l;->b:Lp2/i;

    iput-object p3, p0, Lp2/l;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ls2/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp2/l;->b:Lp2/i;

    invoke-virtual {v0, p1}, Lq2/r;->c(Lu2/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Lp2/a;Landroid/app/Activity;Lp2/d;I)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lp2/k;

    invoke-direct {v0, p0, p2}, Lp2/k;-><init>(Lp2/l;Landroid/app/Activity;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lp2/l;->g(Lp2/a;Lr2/a;Lp2/d;I)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized c(Ls2/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp2/l;->b:Lp2/i;

    invoke-virtual {v0, p1}, Lq2/r;->b(Lu2/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d()LR1/f;
    .locals 2

    iget-object v0, p0, Lp2/l;->a:Lp2/w;

    iget-object v1, p0, Lp2/l;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp2/w;->d(Ljava/lang/String;)LR1/f;

    move-result-object v0

    return-object v0
.end method

.method public final e()LR1/f;
    .locals 2

    iget-object v0, p0, Lp2/l;->a:Lp2/w;

    iget-object v1, p0, Lp2/l;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp2/w;->e(Ljava/lang/String;)LR1/f;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lp2/a;ILandroid/app/Activity;I)Z
    .locals 1

    invoke-static {p2}, Lp2/d;->c(I)Lp2/d;

    move-result-object p2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lp2/k;

    invoke-direct {v0, p0, p3}, Lp2/k;-><init>(Lp2/l;Landroid/app/Activity;)V

    invoke-virtual {p0, p1, v0, p2, p4}, Lp2/l;->g(Lp2/a;Lr2/a;Lp2/d;I)Z

    move-result p1

    return p1
.end method

.method public final g(Lp2/a;Lr2/a;Lp2/d;I)Z
    .locals 8

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1, p3}, Lp2/a;->f(Lp2/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lp2/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lp2/a;->l()V

    invoke-virtual {p1, p3}, Lp2/a;->j(Lp2/d;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move v2, p4

    invoke-interface/range {v0 .. v7}, Lr2/a;->a(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
