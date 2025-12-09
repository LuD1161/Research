.class public final LR1/t;
.super LR1/f;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:LR1/q;

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR1/f;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LR1/t;->a:Ljava/lang/Object;

    new-instance v0, LR1/q;

    invoke-direct {v0}, LR1/q;-><init>()V

    iput-object v0, p0, LR1/t;->b:LR1/q;

    return-void
.end method


# virtual methods
.method public final a(LR1/b;)LR1/f;
    .locals 2

    sget-object v0, LR1/h;->a:Ljava/util/concurrent/Executor;

    new-instance v1, LR1/k;

    invoke-direct {v1, v0, p1}, LR1/k;-><init>(Ljava/util/concurrent/Executor;LR1/b;)V

    iget-object p1, p0, LR1/t;->b:LR1/q;

    invoke-virtual {p1, v1}, LR1/q;->a(LR1/p;)V

    invoke-virtual {p0}, LR1/t;->s()V

    return-object p0
.end method

.method public final b(Ljava/util/concurrent/Executor;LR1/b;)LR1/f;
    .locals 1

    new-instance v0, LR1/k;

    invoke-direct {v0, p1, p2}, LR1/k;-><init>(Ljava/util/concurrent/Executor;LR1/b;)V

    iget-object p1, p0, LR1/t;->b:LR1/q;

    invoke-virtual {p1, v0}, LR1/q;->a(LR1/p;)V

    invoke-virtual {p0}, LR1/t;->s()V

    return-object p0
.end method

.method public final c(LR1/c;)LR1/f;
    .locals 1

    sget-object v0, LR1/h;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, LR1/t;->j(Ljava/util/concurrent/Executor;LR1/c;)LR1/f;

    return-object p0
.end method

.method public final d(LR1/d;)LR1/f;
    .locals 1

    sget-object v0, LR1/h;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, LR1/t;->k(Ljava/util/concurrent/Executor;LR1/d;)LR1/f;

    return-object p0
.end method

.method public final e()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, LR1/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR1/t;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LR1/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LR1/t;->p()V

    invoke-virtual {p0}, LR1/t;->r()V

    iget-object v1, p0, LR1/t;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, LR1/t;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v2, LR1/e;

    invoke-direct {v2, v1}, LR1/e;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, LR1/t;->d:Z

    return v0
.end method

.method public final h()Z
    .locals 2

    iget-object v0, p0, LR1/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LR1/t;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()Z
    .locals 3

    iget-object v0, p0, LR1/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LR1/t;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LR1/t;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, LR1/t;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j(Ljava/util/concurrent/Executor;LR1/c;)LR1/f;
    .locals 1

    new-instance v0, LR1/m;

    invoke-direct {v0, p1, p2}, LR1/m;-><init>(Ljava/util/concurrent/Executor;LR1/c;)V

    iget-object p1, p0, LR1/t;->b:LR1/q;

    invoke-virtual {p1, v0}, LR1/q;->a(LR1/p;)V

    invoke-virtual {p0}, LR1/t;->s()V

    return-object p0
.end method

.method public final k(Ljava/util/concurrent/Executor;LR1/d;)LR1/f;
    .locals 1

    new-instance v0, LR1/o;

    invoke-direct {v0, p1, p2}, LR1/o;-><init>(Ljava/util/concurrent/Executor;LR1/d;)V

    iget-object p1, p0, LR1/t;->b:LR1/q;

    invoke-virtual {p1, v0}, LR1/q;->a(LR1/p;)V

    invoke-virtual {p0}, LR1/t;->s()V

    return-object p0
.end method

.method public final l(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LR1/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LR1/t;->q()V

    const/4 v1, 0x1

    iput-boolean v1, p0, LR1/t;->c:Z

    iput-object p1, p0, LR1/t;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LR1/t;->b:LR1/q;

    invoke-virtual {p1, p0}, LR1/q;->b(LR1/f;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final m(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, LR1/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LR1/t;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LR1/t;->c:Z

    iput-object p1, p0, LR1/t;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LR1/t;->b:LR1/q;

    invoke-virtual {p1, p0}, LR1/q;->b(LR1/f;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final n(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LR1/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LR1/t;->q()V

    const/4 v1, 0x1

    iput-boolean v1, p0, LR1/t;->c:Z

    iput-object p1, p0, LR1/t;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LR1/t;->b:LR1/q;

    invoke-virtual {p1, p0}, LR1/q;->b(LR1/f;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final o(Ljava/lang/Exception;)Z
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LR1/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LR1/t;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LR1/t;->c:Z

    iput-object p1, p0, LR1/t;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LR1/t;->b:LR1/q;

    invoke-virtual {p1, p0}, LR1/q;->b(LR1/f;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final p()V
    .locals 2

    iget-boolean v0, p0, LR1/t;->c:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lz1/o;->i(ZLjava/lang/Object;)V

    return-void
.end method

.method public final q()V
    .locals 1

    iget-boolean v0, p0, LR1/t;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, LR1/a;->a(LR1/f;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final r()V
    .locals 2

    iget-boolean v0, p0, LR1/t;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, LR1/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LR1/t;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LR1/t;->b:LR1/q;

    invoke-virtual {v0, p0}, LR1/q;->b(LR1/f;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
