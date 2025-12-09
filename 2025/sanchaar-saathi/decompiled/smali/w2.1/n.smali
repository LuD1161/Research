.class public final Lw2/n;
.super Lw2/j;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lw2/t;


# direct methods
.method public constructor <init>(Lw2/t;)V
    .locals 0

    iput-object p1, p0, Lw2/n;->f:Lw2/t;

    invoke-direct {p0}, Lw2/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lw2/n;->f:Lw2/t;

    invoke-static {v0}, Lw2/t;->g(Lw2/t;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lw2/n;->f:Lw2/t;

    invoke-static {v1}, Lw2/t;->i(Lw2/t;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lw2/n;->f:Lw2/t;

    invoke-static {v1}, Lw2/t;->i(Lw2/t;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lw2/n;->f:Lw2/t;

    invoke-static {v1}, Lw2/t;->f(Lw2/t;)Lw2/i;

    move-result-object v1

    const-string v3, "Leaving the connection open for other ongoing calls."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lw2/i;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lw2/n;->f:Lw2/t;

    invoke-static {v1}, Lw2/t;->d(Lw2/t;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lw2/t;->f(Lw2/t;)Lw2/i;

    move-result-object v1

    const-string v3, "Unbind from service."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lw2/i;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lw2/n;->f:Lw2/t;

    invoke-static {v1}, Lw2/t;->a(Lw2/t;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Lw2/t;->b(Lw2/t;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lw2/n;->f:Lw2/t;

    invoke-static {v1, v2}, Lw2/t;->l(Lw2/t;Z)V

    iget-object v1, p0, Lw2/n;->f:Lw2/t;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lw2/t;->m(Lw2/t;Landroid/os/IInterface;)V

    iget-object v1, p0, Lw2/n;->f:Lw2/t;

    invoke-static {v1, v2}, Lw2/t;->k(Lw2/t;Landroid/content/ServiceConnection;)V

    :cond_1
    iget-object v1, p0, Lw2/n;->f:Lw2/t;

    invoke-static {v1}, Lw2/t;->o(Lw2/t;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
