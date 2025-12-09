.class public final Lq2/w;
.super Lq2/t;
.source "SourceFile"


# instance fields
.field public final synthetic f:LR1/g;

.field public final synthetic g:Lq2/t;

.field public final synthetic h:Lq2/D;


# direct methods
.method public constructor <init>(Lq2/D;LR1/g;LR1/g;Lq2/t;)V
    .locals 0

    iput-object p1, p0, Lq2/w;->h:Lq2/D;

    iput-object p3, p0, Lq2/w;->f:LR1/g;

    iput-object p4, p0, Lq2/w;->g:Lq2/t;

    invoke-direct {p0, p2}, Lq2/t;-><init>(LR1/g;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lq2/w;->h:Lq2/D;

    invoke-static {v0}, Lq2/D;->g(Lq2/D;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lq2/w;->h:Lq2/D;

    iget-object v2, p0, Lq2/w;->f:LR1/g;

    invoke-static {v1, v2}, Lq2/D;->n(Lq2/D;LR1/g;)V

    iget-object v1, p0, Lq2/w;->h:Lq2/D;

    invoke-static {v1}, Lq2/D;->i(Lq2/D;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lq2/w;->h:Lq2/D;

    invoke-static {v1}, Lq2/D;->f(Lq2/D;)Lq2/s;

    move-result-object v1

    const-string v2, "Already connected to the service."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lq2/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lq2/w;->h:Lq2/D;

    iget-object v2, p0, Lq2/w;->g:Lq2/t;

    invoke-static {v1, v2}, Lq2/D;->p(Lq2/D;Lq2/t;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
