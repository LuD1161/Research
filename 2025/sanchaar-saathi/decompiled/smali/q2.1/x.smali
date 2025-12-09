.class public final Lq2/x;
.super Lq2/t;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lq2/D;


# direct methods
.method public constructor <init>(Lq2/D;)V
    .locals 0

    iput-object p1, p0, Lq2/x;->f:Lq2/D;

    invoke-direct {p0}, Lq2/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lq2/x;->f:Lq2/D;

    invoke-static {v0}, Lq2/D;->g(Lq2/D;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lq2/x;->f:Lq2/D;

    invoke-static {v1}, Lq2/D;->i(Lq2/D;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lq2/x;->f:Lq2/D;

    invoke-static {v1}, Lq2/D;->i(Lq2/D;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lq2/x;->f:Lq2/D;

    invoke-static {v1}, Lq2/D;->f(Lq2/D;)Lq2/s;

    move-result-object v1

    const-string v3, "Leaving the connection open for other ongoing calls."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lq2/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lq2/x;->f:Lq2/D;

    invoke-static {v1}, Lq2/D;->d(Lq2/D;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lq2/D;->f(Lq2/D;)Lq2/s;

    move-result-object v1

    const-string v3, "Unbind from service."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lq2/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lq2/x;->f:Lq2/D;

    invoke-static {v1}, Lq2/D;->a(Lq2/D;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Lq2/D;->b(Lq2/D;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lq2/x;->f:Lq2/D;

    invoke-static {v1, v2}, Lq2/D;->l(Lq2/D;Z)V

    iget-object v1, p0, Lq2/x;->f:Lq2/D;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lq2/D;->m(Lq2/D;Landroid/os/IInterface;)V

    iget-object v1, p0, Lq2/x;->f:Lq2/D;

    invoke-static {v1, v2}, Lq2/D;->k(Lq2/D;Landroid/content/ServiceConnection;)V

    :cond_2
    iget-object v1, p0, Lq2/x;->f:Lq2/D;

    invoke-static {v1}, Lq2/D;->o(Lq2/D;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
