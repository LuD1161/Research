.class public final LR1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR1/p;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public c:LR1/d;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;LR1/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LR1/o;->b:Ljava/lang/Object;

    iput-object p1, p0, LR1/o;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LR1/o;->c:LR1/d;

    return-void
.end method


# virtual methods
.method public final a(LR1/f;)V
    .locals 2

    invoke-virtual {p1}, LR1/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LR1/o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR1/o;->c:LR1/d;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LR1/o;->a:Ljava/util/concurrent/Executor;

    new-instance v1, LR1/n;

    invoke-direct {v1, p0, p1}, LR1/n;-><init>(LR1/o;LR1/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LR1/o;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic c()LR1/d;
    .locals 1

    iget-object v0, p0, LR1/o;->c:LR1/d;

    return-object v0
.end method
