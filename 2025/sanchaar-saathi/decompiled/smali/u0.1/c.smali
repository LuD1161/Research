.class public final Lu0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/c$a;
    }
.end annotation


# static fields
.field public static final m:Lu0/c$a;


# instance fields
.field public a:Ly0/h;

.field public final b:Landroid/os/Handler;

.field public c:Ljava/lang/Runnable;

.field public final d:Ljava/lang/Object;

.field public e:J

.field public final f:Ljava/util/concurrent/Executor;

.field public g:I

.field public h:J

.field public i:Ly0/g;

.field public j:Z

.field public final k:Ljava/lang/Runnable;

.field public final l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu0/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu0/c$a;-><init>(Lv3/g;)V

    sput-object v0, Lu0/c;->m:Lu0/c$a;

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "autoCloseTimeUnit"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoCloseExecutor"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lu0/c;->b:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu0/c;->d:Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lu0/c;->e:J

    iput-object p4, p0, Lu0/c;->f:Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lu0/c;->h:J

    new-instance p1, Lu0/a;

    invoke-direct {p1, p0}, Lu0/a;-><init>(Lu0/c;)V

    iput-object p1, p0, Lu0/c;->k:Ljava/lang/Runnable;

    new-instance p1, Lu0/b;

    invoke-direct {p1, p0}, Lu0/b;-><init>(Lu0/c;)V

    iput-object p1, p0, Lu0/c;->l:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lu0/c;)V
    .locals 0

    invoke-static {p0}, Lu0/c;->f(Lu0/c;)V

    return-void
.end method

.method public static synthetic b(Lu0/c;)V
    .locals 0

    invoke-static {p0}, Lu0/c;->c(Lu0/c;)V

    return-void
.end method

.method public static final c(Lu0/c;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu0/c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lu0/c;->h:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lu0/c;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget v1, p0, Lu0/c;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lu0/c;->c:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    sget-object v1, Lh3/n;->a:Lh3/n;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    iget-object v1, p0, Lu0/c;->i:Ly0/g;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ly0/g;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_3
    iput-object v2, p0, Lu0/c;->i:Ly0/g;

    sget-object p0, Lh3/n;->a:Lh3/n;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :cond_4
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "onAutoCloseCallback is null but it should have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static final f(Lu0/c;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu0/c;->f:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lu0/c;->l:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Lu0/c;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lu0/c;->j:Z

    iget-object v1, p0, Lu0/c;->i:Ly0/g;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lu0/c;->i:Ly0/g;

    sget-object v1, Lh3/n;->a:Lh3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lu0/c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lu0/c;->g:I

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lu0/c;->g:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lu0/c;->i:Ly0/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lu0/c;->b:Landroid/os/Handler;

    iget-object v2, p0, Lu0/c;->k:Ljava/lang/Runnable;

    iget-wide v3, p0, Lu0/c;->e:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lh3/n;->a:Lh3/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_2
    const-string v1, "ref count is 0 or lower but we\'re supposed to decrement"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final g(Lu3/l;)Ljava/lang/Object;
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lu0/c;->j()Ly0/g;

    move-result-object v0

    invoke-interface {p1, v0}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lu0/c;->e()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lu0/c;->e()V

    throw p1
.end method

.method public final h()Ly0/g;
    .locals 1

    iget-object v0, p0, Lu0/c;->i:Ly0/g;

    return-object v0
.end method

.method public final i()Ly0/h;
    .locals 1

    iget-object v0, p0, Lu0/c;->a:Ly0/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "delegateOpenHelper"

    invoke-static {v0}, Lv3/l;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Ly0/g;
    .locals 3

    iget-object v0, p0, Lu0/c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lu0/c;->b:Landroid/os/Handler;

    iget-object v2, p0, Lu0/c;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v1, p0, Lu0/c;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lu0/c;->g:I

    iget-boolean v1, p0, Lu0/c;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lu0/c;->i:Ly0/g;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ly0/g;->isOpen()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lu0/c;->i()Ly0/h;

    move-result-object v1

    invoke-interface {v1}, Ly0/h;->getWritableDatabase()Ly0/g;

    move-result-object v1

    iput-object v1, p0, Lu0/c;->i:Ly0/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_2
    const-string v1, "Attempting to open already closed database."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public final k(Ly0/h;)V
    .locals 1

    const-string v0, "delegateOpenHelper"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lu0/c;->n(Ly0/h;)V

    return-void
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lu0/c;->j:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final m(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "onAutoClose"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lu0/c;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public final n(Ly0/h;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lu0/c;->a:Ly0/h;

    return-void
.end method
