.class public LR0/E;
.super LQ0/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LR0/E$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String;

.field public static l:LR0/E;

.field public static m:LR0/E;

.field public static final n:Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroidx/work/a;

.field public c:Landroidx/work/impl/WorkDatabase;

.field public d:Lc1/b;

.field public e:Ljava/util/List;

.field public f:LR0/r;

.field public g:La1/q;

.field public h:Z

.field public i:Landroid/content/BroadcastReceiver$PendingResult;

.field public final j:LX0/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, LQ0/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LR0/E;->k:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, LR0/E;->l:LR0/E;

    sput-object v0, LR0/E;->m:LR0/E;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LR0/E;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LQ0/p;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, LR0/E;-><init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;)V
    .locals 9

    .line 7
    invoke-direct {p0}, LQ0/t;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    new-instance v1, LQ0/i$a;

    invoke-virtual {p2}, Landroidx/work/a;->j()I

    move-result v2

    invoke-direct {v1, v2}, LQ0/i$a;-><init>(I)V

    invoke-static {v1}, LQ0/i;->h(LQ0/i;)V

    .line 10
    new-instance v1, LX0/n;

    invoke-direct {v1, v0, p3}, LX0/n;-><init>(Landroid/content/Context;Lc1/b;)V

    iput-object v1, p0, LR0/E;->j:LX0/n;

    .line 11
    invoke-virtual {p0, v0, p2, v1}, LR0/E;->g(Landroid/content/Context;Landroidx/work/a;LX0/n;)Ljava/util/List;

    move-result-object v0

    .line 12
    new-instance v8, LR0/r;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, LR0/r;-><init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    move-object v2, p0

    .line 13
    invoke-virtual/range {v2 .. v8}, LR0/E;->s(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;LR0/r;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;Z)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-interface {p3}, Lc1/b;->b()Lc1/a;

    move-result-object v1

    .line 5
    invoke-static {v0, v1, p4}, Landroidx/work/impl/WorkDatabase;->D(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object p4

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, LR0/E;-><init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Landroidx/work/a;)V
    .locals 4

    sget-object v0, LR0/E;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LR0/E;->l:LR0/E;

    if-eqz v1, :cond_1

    sget-object v2, LR0/E;->m:LR0/E;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, LR0/E;->m:LR0/E;

    if-nez v1, :cond_2

    new-instance v1, LR0/E;

    new-instance v2, Lc1/c;

    invoke-virtual {p1}, Landroidx/work/a;->m()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v3}, Lc1/c;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p0, p1, v2}, LR0/E;-><init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;)V

    sput-object v1, LR0/E;->m:LR0/E;

    :cond_2
    sget-object p0, LR0/E;->m:LR0/E;

    sput-object p0, LR0/E;->l:LR0/E;

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static k()LR0/E;
    .locals 2

    sget-object v0, LR0/E;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LR0/E;->l:LR0/E;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget-object v1, LR0/E;->m:LR0/E;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static l(Landroid/content/Context;)LR0/E;
    .locals 2

    sget-object v0, LR0/E;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, LR0/E;->k()LR0/E;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public b(Ljava/util/List;)LQ0/l;
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LR0/x;

    invoke-direct {v0, p0, p1}, LR0/x;-><init>(LR0/E;Ljava/util/List;)V

    invoke-virtual {v0}, LR0/x;->a()LQ0/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;LQ0/c;LQ0/n;)LQ0/l;
    .locals 1

    sget-object v0, LQ0/c;->g:LQ0/c;

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1, p3}, LR0/I;->c(LR0/E;Ljava/lang/String;LQ0/u;)LQ0/l;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, LR0/E;->h(Ljava/lang/String;LQ0/c;LQ0/n;)LR0/x;

    move-result-object p1

    invoke-virtual {p1}, LR0/x;->a()LQ0/l;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/util/UUID;)LQ0/l;
    .locals 1

    invoke-static {p1, p0}, La1/b;->b(Ljava/util/UUID;LR0/E;)La1/b;

    move-result-object p1

    iget-object v0, p0, LR0/E;->d:Lc1/b;

    invoke-interface {v0, p1}, Lc1/b;->c(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, La1/b;->d()LQ0/l;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroid/content/Context;Landroidx/work/a;LX0/n;)Ljava/util/List;
    .locals 2

    invoke-static {p1, p0}, LR0/u;->a(Landroid/content/Context;LR0/E;)LR0/t;

    move-result-object v0

    new-instance v1, LS0/b;

    invoke-direct {v1, p1, p2, p3, p0}, LS0/b;-><init>(Landroid/content/Context;Landroidx/work/a;LX0/n;LR0/E;)V

    const/4 p1, 0x2

    new-array p1, p1, [LR0/t;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    aput-object v1, p1, p2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;LQ0/c;LQ0/n;)LR0/x;
    .locals 1

    sget-object v0, LQ0/c;->f:LQ0/c;

    if-ne p2, v0, :cond_0

    sget-object p2, LQ0/d;->f:LQ0/d;

    goto :goto_0

    :cond_0
    sget-object p2, LQ0/d;->e:LQ0/d;

    :goto_0
    new-instance v0, LR0/x;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, LR0/x;-><init>(LR0/E;Ljava/lang/String;LQ0/d;Ljava/util/List;)V

    return-object v0
.end method

.method public i()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, LR0/E;->a:Landroid/content/Context;

    return-object v0
.end method

.method public j()Landroidx/work/a;
    .locals 1

    iget-object v0, p0, LR0/E;->b:Landroidx/work/a;

    return-object v0
.end method

.method public m()La1/q;
    .locals 1

    iget-object v0, p0, LR0/E;->g:La1/q;

    return-object v0
.end method

.method public n()LR0/r;
    .locals 1

    iget-object v0, p0, LR0/E;->f:LR0/r;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LR0/E;->e:Ljava/util/List;

    return-object v0
.end method

.method public p()LX0/n;
    .locals 1

    iget-object v0, p0, LR0/E;->j:LX0/n;

    return-object v0
.end method

.method public q()Landroidx/work/impl/WorkDatabase;
    .locals 1

    iget-object v0, p0, LR0/E;->c:Landroidx/work/impl/WorkDatabase;

    return-object v0
.end method

.method public r()Lc1/b;
    .locals 1

    iget-object v0, p0, LR0/E;->d:Lc1/b;

    return-object v0
.end method

.method public final s(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;LR0/r;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LR0/E;->a:Landroid/content/Context;

    iput-object p2, p0, LR0/E;->b:Landroidx/work/a;

    iput-object p3, p0, LR0/E;->d:Lc1/b;

    iput-object p4, p0, LR0/E;->c:Landroidx/work/impl/WorkDatabase;

    iput-object p5, p0, LR0/E;->e:Ljava/util/List;

    iput-object p6, p0, LR0/E;->f:LR0/r;

    new-instance p2, La1/q;

    invoke-direct {p2, p4}, La1/q;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object p2, p0, LR0/E;->g:La1/q;

    const/4 p2, 0x0

    iput-boolean p2, p0, LR0/E;->h:Z

    invoke-static {p1}, LR0/E$a;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, LR0/E;->d:Lc1/b;

    new-instance p3, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {p3, p1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;LR0/E;)V

    invoke-interface {p2, p3}, Lc1/b;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t()V
    .locals 2

    sget-object v0, LR0/E;->n:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, LR0/E;->h:Z

    iget-object v1, p0, LR0/E;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, LR0/E;->i:Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public u()V
    .locals 3

    invoke-virtual {p0}, LR0/E;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LU0/c;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, LR0/E;->q()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object v0

    invoke-interface {v0}, LZ0/v;->v()I

    invoke-virtual {p0}, LR0/E;->j()Landroidx/work/a;

    move-result-object v0

    invoke-virtual {p0}, LR0/E;->q()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {p0}, LR0/E;->o()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, LR0/u;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public v(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    sget-object v0, LR0/E;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR0/E;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, LR0/E;->i:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v1, p0, LR0/E;->h:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 p1, 0x0

    iput-object p1, p0, LR0/E;->i:Landroid/content/BroadcastReceiver$PendingResult;

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public w(LR0/v;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LR0/E;->x(LR0/v;Landroidx/work/WorkerParameters$a;)V

    return-void
.end method

.method public x(LR0/v;Landroidx/work/WorkerParameters$a;)V
    .locals 2

    iget-object v0, p0, LR0/E;->d:Lc1/b;

    new-instance v1, La1/t;

    invoke-direct {v1, p0, p1, p2}, La1/t;-><init>(LR0/E;LR0/v;Landroidx/work/WorkerParameters$a;)V

    invoke-interface {v0, v1}, Lc1/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public y(LZ0/m;)V
    .locals 3

    iget-object v0, p0, LR0/E;->d:Lc1/b;

    new-instance v1, La1/u;

    new-instance v2, LR0/v;

    invoke-direct {v2, p1}, LR0/v;-><init>(LZ0/m;)V

    const/4 p1, 0x1

    invoke-direct {v1, p0, v2, p1}, La1/u;-><init>(LR0/E;LR0/v;Z)V

    invoke-interface {v0, v1}, Lc1/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public z(LR0/v;)V
    .locals 3

    iget-object v0, p0, LR0/E;->d:Lc1/b;

    new-instance v1, La1/u;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, La1/u;-><init>(LR0/E;LR0/v;Z)V

    invoke-interface {v0, v1}, Lc1/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method
