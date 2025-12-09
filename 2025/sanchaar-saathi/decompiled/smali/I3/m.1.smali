.class public final LI3/m;
.super LD3/F;
.source "SourceFile"

# interfaces
.implements LD3/Q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI3/m$a;
    }
.end annotation


# static fields
.field public static final l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final g:LD3/F;

.field public final h:I

.field public final synthetic i:LD3/Q;

.field public final j:LI3/r;

.field public final k:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, LI3/m;

    const-string v1, "runningWorkers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, LI3/m;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(LD3/F;I)V
    .locals 0

    invoke-direct {p0}, LD3/F;-><init>()V

    iput-object p1, p0, LI3/m;->g:LD3/F;

    iput p2, p0, LI3/m;->h:I

    instance-of p2, p1, LD3/Q;

    if-eqz p2, :cond_0

    check-cast p1, LD3/Q;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, LD3/O;->a()LD3/Q;

    move-result-object p1

    :cond_1
    iput-object p1, p0, LI3/m;->i:LD3/Q;

    new-instance p1, LI3/r;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LI3/r;-><init>(Z)V

    iput-object p1, p0, LI3/m;->j:LI3/r;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI3/m;->k:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic N(LI3/m;)LD3/F;
    .locals 0

    iget-object p0, p0, LI3/m;->g:LD3/F;

    return-object p0
.end method

.method public static final synthetic O(LI3/m;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, LI3/m;->P()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public K(Ll3/i;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, LI3/m;->j:LI3/r;

    invoke-virtual {p1, p2}, LI3/r;->a(Ljava/lang/Object;)Z

    sget-object p1, LI3/m;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, LI3/m;->h:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, LI3/m;->Q()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LI3/m;->P()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, LI3/m$a;

    invoke-direct {p2, p0, p1}, LI3/m$a;-><init>(LI3/m;Ljava/lang/Runnable;)V

    iget-object p1, p0, LI3/m;->g:LD3/F;

    invoke-virtual {p1, p0, p2}, LD3/F;->K(Ll3/i;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final P()Ljava/lang/Runnable;
    .locals 3

    :goto_0
    iget-object v0, p0, LI3/m;->j:LI3/r;

    invoke-virtual {v0}, LI3/r;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, LI3/m;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LI3/m;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, LI3/m;->j:LI3/r;

    invoke-virtual {v2}, LI3/r;->c()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    return-object v0
.end method

.method public final Q()Z
    .locals 4

    iget-object v0, p0, LI3/m;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LI3/m;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, LI3/m;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
