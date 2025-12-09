.class public final Lw2/m;
.super Lw2/j;
.source "SourceFile"


# instance fields
.field public final synthetic f:LR1/g;

.field public final synthetic g:Lw2/j;

.field public final synthetic h:Lw2/t;


# direct methods
.method public constructor <init>(Lw2/t;LR1/g;LR1/g;Lw2/j;)V
    .locals 0

    iput-object p3, p0, Lw2/m;->f:LR1/g;

    iput-object p4, p0, Lw2/m;->g:Lw2/j;

    iput-object p1, p0, Lw2/m;->h:Lw2/t;

    invoke-direct {p0, p2}, Lw2/j;-><init>(LR1/g;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lw2/m;->h:Lw2/t;

    invoke-static {v0}, Lw2/t;->g(Lw2/t;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lw2/m;->h:Lw2/t;

    iget-object v2, p0, Lw2/m;->f:LR1/g;

    invoke-static {v1, v2}, Lw2/t;->n(Lw2/t;LR1/g;)V

    iget-object v1, p0, Lw2/m;->h:Lw2/t;

    invoke-static {v1}, Lw2/t;->i(Lw2/t;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lw2/m;->h:Lw2/t;

    invoke-static {v1}, Lw2/t;->f(Lw2/t;)Lw2/i;

    move-result-object v1

    const-string v2, "Already connected to the service."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lw2/i;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lw2/m;->h:Lw2/t;

    iget-object v2, p0, Lw2/m;->g:Lw2/j;

    invoke-static {v1, v2}, Lw2/t;->p(Lw2/t;Lw2/j;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
