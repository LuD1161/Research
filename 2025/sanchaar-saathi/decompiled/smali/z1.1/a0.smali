.class public final Lz1/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lz1/d0;


# instance fields
.field public final a:Ljava/util/Map;

.field public b:I

.field public c:Z

.field public d:Landroid/os/IBinder;

.field public final e:Lz1/Z;

.field public f:Landroid/content/ComponentName;

.field public final synthetic g:Lz1/c0;


# direct methods
.method public constructor <init>(Lz1/c0;Lz1/Z;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lz1/a0;->g:Lz1/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz1/a0;->e:Lz1/Z;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lz1/a0;->a:Ljava/util/Map;

    const/4 p1, 0x2

    iput p1, p0, Lz1/a0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lz1/a0;->e:Lz1/Z;

    iget-object v0, p0, Lz1/a0;->g:Lz1/c0;

    invoke-virtual {v0}, Lz1/c0;->h()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lz1/c0;->i()LC1/b;

    move-result-object p1

    invoke-virtual {v0}, Lz1/c0;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, LC1/b;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz1/a0;->c:Z

    const/4 p1, 0x2

    iput p1, p0, Lz1/a0;->b:I

    return-void
.end method

.method public final b(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 0

    iget-object p3, p0, Lz1/a0;->a:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lz1/a0;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lz1/a0;->c:Z

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lz1/a0;->b:I

    return v0
.end method

.method public final f(Landroid/content/ServiceConnection;)Z
    .locals 1

    iget-object v0, p0, Lz1/a0;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lz1/a0;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final h()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lz1/a0;->d:Landroid/os/IBinder;

    return-object v0
.end method

.method public final i()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lz1/a0;->f:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final synthetic j(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lu1/a;
    .locals 10

    :try_start_0
    iget-object v0, p0, Lz1/a0;->g:Lz1/c0;

    invoke-virtual {v0}, Lz1/c0;->g()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lz1/a0;->e:Lz1/Z;

    invoke-static {v0, v1}, Lz1/N;->a(Landroid/content/Context;Lz1/Z;)Landroid/content/Intent;

    move-result-object v5
    :try_end_0
    .catch Lz1/L; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x3

    iput v0, p0, Lz1/a0;->b:I

    invoke-static {}, LD1/l;->a()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lz1/a0;->g:Lz1/c0;

    invoke-virtual {v1}, Lz1/c0;->i()LC1/b;

    move-result-object v2

    invoke-virtual {v1}, Lz1/c0;->g()Landroid/content/Context;

    move-result-object v3

    iget-object v9, p0, Lz1/a0;->e:Lz1/Z;

    const/16 v7, 0x1081

    move-object v4, p1

    move-object v6, p0

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, LC1/b;->c(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    move-result p1

    iput-boolean p1, p0, Lz1/a0;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lz1/c0;->h()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1}, Lz1/c0;->h()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {v1}, Lz1/c0;->j()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object p1, Lu1/a;->i:Lu1/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    :try_start_2
    iput p1, p0, Lz1/a0;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lz1/c0;->i()LC1/b;

    move-result-object p1

    invoke-virtual {v1}, Lz1/c0;->g()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, LC1/b;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :try_start_4
    new-instance p1, Lu1/a;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lu1/a;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    throw p1

    :catch_1
    move-exception p1

    iget-object p1, p1, Lz1/L;->e:Lu1/a;

    :goto_2
    return-object p1
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz1/a0;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lz1/a0;->g:Lz1/c0;

    invoke-virtual {v0}, Lz1/c0;->f()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lz1/c0;->h()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lz1/a0;->e:Lz1/Z;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lz1/a0;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lz1/a0;->f:Landroid/content/ComponentName;

    iget-object v0, p0, Lz1/a0;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput v3, p0, Lz1/a0;->b:I

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lz1/a0;->g:Lz1/c0;

    invoke-virtual {v0}, Lz1/c0;->f()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lz1/c0;->h()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lz1/a0;->e:Lz1/Z;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lz1/a0;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lz1/a0;->f:Landroid/content/ComponentName;

    iget-object v0, p0, Lz1/a0;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lz1/a0;->b:I

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
