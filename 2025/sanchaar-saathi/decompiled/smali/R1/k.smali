.class public final LR1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR1/p;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public c:LR1/b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;LR1/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LR1/k;->b:Ljava/lang/Object;

    iput-object p1, p0, LR1/k;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LR1/k;->c:LR1/b;

    return-void
.end method


# virtual methods
.method public final a(LR1/f;)V
    .locals 2

    iget-object v0, p0, LR1/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR1/k;->c:LR1/b;

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

    iget-object v0, p0, LR1/k;->a:Ljava/util/concurrent/Executor;

    new-instance v1, LR1/j;

    invoke-direct {v1, p0, p1}, LR1/j;-><init>(LR1/k;LR1/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LR1/k;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic c()LR1/b;
    .locals 1

    iget-object v0, p0, LR1/k;->c:LR1/b;

    return-object v0
.end method
