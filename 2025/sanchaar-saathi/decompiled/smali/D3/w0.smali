.class public LD3/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD3/p0;
.implements LD3/t;
.implements LD3/D0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LD3/w0$a;,
        LD3/w0$b;,
        LD3/w0$c;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_state"

    const-class v1, LD3/w0;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LD3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LD3/w0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {}, LD3/x0;->c()LD3/Y;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, LD3/x0;->d()LD3/Y;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LD3/w0;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic I0(LD3/w0;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, LD3/w0;->H0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic L(LD3/w0;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LD3/w0;->X()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic M(LD3/w0;LD3/w0$c;LD3/s;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LD3/w0;->a0(LD3/w0$c;LD3/s;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public A0()V
    .locals 0

    return-void
.end method

.method public B(Ll3/i$c;)Ll3/i;
    .locals 0

    invoke-static {p0, p1}, LD3/p0$a;->e(LD3/p0;Ll3/i$c;)Ll3/i;

    move-result-object p1

    return-object p1
.end method

.method public final B0(LD3/Y;)V
    .locals 2

    new-instance v0, LD3/A0;

    invoke-direct {v0}, LD3/A0;-><init>()V

    invoke-virtual {p1}, LD3/Y;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, LD3/j0;

    invoke-direct {v1, v0}, LD3/j0;-><init>(LD3/A0;)V

    move-object v0, v1

    :goto_0
    sget-object v1, LD3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, p1, v0}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final C0(LD3/v0;)V
    .locals 2

    new-instance v0, LD3/A0;

    invoke-direct {v0}, LD3/A0;-><init>()V

    invoke-virtual {p1, v0}, LI3/q;->n(LI3/q;)Z

    invoke-virtual {p1}, LI3/q;->s()LI3/q;

    move-result-object v0

    sget-object v1, LD3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, p1, v0}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final D()Z
    .locals 1

    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, LD3/k0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final D0(LD3/v0;)V
    .locals 3

    :cond_0
    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LD3/v0;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    return-void

    :cond_1
    sget-object v1, LD3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, LD3/x0;->c()LD3/Y;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_2
    instance-of v1, v0, LD3/k0;

    if-eqz v1, :cond_3

    check-cast v0, LD3/k0;

    invoke-interface {v0}, LD3/k0;->j()LD3/A0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, LI3/q;->v()Z

    :cond_3
    return-void
.end method

.method public final E0(LD3/r;)V
    .locals 1

    sget-object v0, LD3/w0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final F0(Ljava/lang/Object;)I
    .locals 4

    instance-of v0, p1, LD3/Y;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, LD3/Y;

    invoke-virtual {v0}, LD3/Y;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    sget-object v0, LD3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, LD3/x0;->c()LD3/Y;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, LD3/w0;->A0()V

    return v1

    :cond_2
    instance-of v0, p1, LD3/j0;

    if-eqz v0, :cond_4

    sget-object v0, LD3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, LD3/j0;

    invoke-virtual {v3}, LD3/j0;->j()LD3/A0;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, LD3/w0;->A0()V

    return v1

    :cond_4
    return v3
.end method

.method public final G0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p1, LD3/w0$c;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    check-cast p1, LD3/w0$c;

    invoke-virtual {p1}, LD3/w0$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LD3/w0$c;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    :cond_1
    instance-of v0, p1, LD3/k0;

    if-eqz v0, :cond_3

    check-cast p1, LD3/k0;

    invoke-interface {p1}, LD3/k0;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    :cond_3
    instance-of p1, p1, LD3/z;

    if-eqz p1, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method

.method public H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, LD3/p0$a;->b(LD3/p0;Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final H0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, LD3/q0;

    if-nez p2, :cond_1

    invoke-static {p0}, LD3/w0;->L(LD3/w0;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-direct {v0, p2, p1, p0}, LD3/q0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LD3/p0;)V

    :cond_2
    return-object v0
.end method

.method public final J0()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LD3/w0;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, LD3/w0;->G0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final K0(LD3/k0;Ljava/lang/Object;)Z
    .locals 2

    sget-object v0, LD3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, LD3/x0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LD3/w0;->y0(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, LD3/w0;->z0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, LD3/w0;->Z(LD3/k0;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final L0(LD3/k0;Ljava/lang/Throwable;)Z
    .locals 4

    invoke-virtual {p0, p1}, LD3/w0;->i0(LD3/k0;)LD3/A0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, LD3/w0$c;

    invoke-direct {v2, v0, v1, p2}, LD3/w0$c;-><init>(LD3/A0;ZLjava/lang/Throwable;)V

    sget-object v3, LD3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, p1, v2}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0, p2}, LD3/w0;->w0(LD3/A0;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final M0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, LD3/k0;

    if-nez v0, :cond_0

    invoke-static {}, LD3/x0;->a()LI3/F;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, LD3/Y;

    if-nez v0, :cond_1

    instance-of v0, p1, LD3/v0;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, LD3/s;

    if-nez v0, :cond_3

    instance-of v0, p2, LD3/z;

    if-nez v0, :cond_3

    check-cast p1, LD3/k0;

    invoke-virtual {p0, p1, p2}, LD3/w0;->K0(LD3/k0;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p2

    :cond_2
    invoke-static {}, LD3/x0;->b()LI3/F;

    move-result-object p1

    return-object p1

    :cond_3
    check-cast p1, LD3/k0;

    invoke-virtual {p0, p1, p2}, LD3/w0;->N0(LD3/k0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final N(Ljava/lang/Object;LD3/A0;LD3/v0;)Z
    .locals 2

    new-instance v0, LD3/w0$d;

    invoke-direct {v0, p3, p0, p1}, LD3/w0$d;-><init>(LI3/q;LD3/w0;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2}, LI3/q;->t()LI3/q;

    move-result-object p1

    invoke-virtual {p1, p3, p2, v0}, LI3/q;->y(LI3/q;LI3/q;LI3/q$a;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public final N0(LD3/k0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0, p1}, LD3/w0;->i0(LD3/k0;)LD3/A0;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, LD3/x0;->b()LI3/F;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v1, p1, LD3/w0$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, LD3/w0$c;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_2

    new-instance v1, LD3/w0$c;

    invoke-direct {v1, v0, v3, v2}, LD3/w0$c;-><init>(LD3/A0;ZLjava/lang/Throwable;)V

    :cond_2
    new-instance v3, Lv3/w;

    invoke-direct {v3}, Lv3/w;-><init>()V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, LD3/w0$c;->g()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, LD3/x0;->a()LI3/F;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v1, v4}, LD3/w0$c;->k(Z)V

    if-eq v1, p1, :cond_4

    sget-object v4, LD3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, p0, p1, v1}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, LD3/x0;->b()LI3/F;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p1

    :cond_4
    :try_start_2
    invoke-virtual {v1}, LD3/w0$c;->f()Z

    move-result v4

    instance-of v5, p2, LD3/z;

    if-eqz v5, :cond_5

    move-object v5, p2

    check-cast v5, LD3/z;

    goto :goto_1

    :cond_5
    move-object v5, v2

    :goto_1
    if-eqz v5, :cond_6

    iget-object v5, v5, LD3/z;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, LD3/w0$c;->a(Ljava/lang/Throwable;)V

    :cond_6
    invoke-virtual {v1}, LD3/w0$c;->e()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v4, :cond_7

    move-object v2, v5

    :cond_7
    iput-object v2, v3, Lv3/w;->e:Ljava/lang/Object;

    sget-object v3, Lh3/n;->a:Lh3/n;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    if-eqz v2, :cond_8

    invoke-virtual {p0, v0, v2}, LD3/w0;->w0(LD3/A0;Ljava/lang/Throwable;)V

    :cond_8
    invoke-virtual {p0, p1}, LD3/w0;->d0(LD3/k0;)LD3/s;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v1, p1, p2}, LD3/w0;->O0(LD3/w0$c;LD3/s;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, LD3/x0;->b:LI3/F;

    return-object p1

    :cond_9
    invoke-virtual {p0, v1, p2}, LD3/w0;->c0(LD3/w0$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_2
    monitor-exit v1

    throw p1
.end method

.method public final O(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eq v1, p1, :cond_1

    if-eq v1, p1, :cond_1

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v1}, Lh3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final O0(LD3/w0$c;LD3/s;Ljava/lang/Object;)Z
    .locals 6

    :cond_0
    iget-object v0, p2, LD3/s;->i:LD3/t;

    new-instance v3, LD3/w0$b;

    invoke-direct {v3, p0, p1, p2, p3}, LD3/w0$b;-><init>(LD3/w0;LD3/w0$c;LD3/s;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, LD3/p0$a;->d(LD3/p0;ZZLu3/l;ILjava/lang/Object;)LD3/W;

    move-result-object v0

    sget-object v1, LD3/B0;->e:LD3/B0;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0, p2}, LD3/w0;->v0(LI3/q;)LD3/s;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public P(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final Q(Ll3/e;)Ljava/lang/Object;
    .locals 2

    :cond_0
    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LD3/k0;

    if-nez v1, :cond_2

    instance-of p1, v0, LD3/z;

    if-nez p1, :cond_1

    invoke-static {v0}, LD3/x0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast v0, LD3/z;

    iget-object p1, v0, LD3/z;->a:Ljava/lang/Throwable;

    throw p1

    :cond_2
    invoke-virtual {p0, v0}, LD3/w0;->F0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1}, LD3/w0;->R(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final R(Ll3/e;)Ljava/lang/Object;
    .locals 2

    new-instance v0, LD3/w0$a;

    invoke-static {p1}, Lm3/b;->b(Ll3/e;)Ll3/e;

    move-result-object v1

    invoke-direct {v0, v1, p0}, LD3/w0$a;-><init>(Ll3/e;LD3/w0;)V

    invoke-virtual {v0}, LD3/m;->A()V

    new-instance v1, LD3/E0;

    invoke-direct {v1, v0}, LD3/E0;-><init>(LD3/m;)V

    invoke-virtual {p0, v1}, LD3/w0;->j(Lu3/l;)LD3/W;

    move-result-object v1

    invoke-static {v0, v1}, LD3/o;->a(LD3/l;LD3/W;)V

    invoke-virtual {v0}, LD3/m;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Ln3/h;->c(Ll3/e;)V

    :cond_0
    return-object v0
.end method

.method public final S(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, LD3/w0;->T(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final T(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, LD3/x0;->a()LI3/F;

    move-result-object v0

    invoke-virtual {p0}, LD3/w0;->h0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LD3/w0;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LD3/x0;->b:LI3/F;

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, LD3/x0;->a()LI3/F;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, LD3/w0;->q0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    invoke-static {}, LD3/x0;->a()LI3/F;

    move-result-object p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, LD3/x0;->b:LI3/F;

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, LD3/x0;->f()LI3/F;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, LD3/w0;->P(Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method public U(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, LD3/w0;->T(Ljava/lang/Object;)Z

    return-void
.end method

.method public final V(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    :cond_0
    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LD3/k0;

    if-eqz v1, :cond_2

    instance-of v1, v0, LD3/w0$c;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, LD3/w0$c;

    invoke-virtual {v1}, LD3/w0$c;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, LD3/z;

    invoke-virtual {p0, p1}, LD3/w0;->b0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, LD3/z;-><init>(Ljava/lang/Throwable;ZILv3/g;)V

    invoke-virtual {p0, v0, v1}, LD3/w0;->M0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LD3/x0;->b()LI3/F;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, LD3/x0;->a()LI3/F;

    move-result-object p1

    return-object p1
.end method

.method public final W(Ljava/lang/Throwable;)Z
    .locals 4

    invoke-virtual {p0}, LD3/w0;->p0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p0}, LD3/w0;->j0()LD3/r;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v3, LD3/B0;->e:LD3/B0;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2, p1}, LD3/r;->e(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public X()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public Y(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, LD3/w0;->T(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LD3/w0;->g0()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final Z(LD3/k0;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, LD3/w0;->j0()LD3/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, LD3/W;->a()V

    sget-object v0, LD3/B0;->e:LD3/B0;

    invoke-virtual {p0, v0}, LD3/w0;->E0(LD3/r;)V

    :cond_0
    instance-of v0, p2, LD3/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, LD3/z;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p2, LD3/z;->a:Ljava/lang/Throwable;

    :cond_2
    instance-of p2, p1, LD3/v0;

    if-eqz p2, :cond_3

    :try_start_0
    move-object p2, p1

    check-cast p2, LD3/v0;

    invoke-virtual {p2, v1}, LD3/B;->z(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    new-instance v0, LD3/C;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in completion handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, LD3/C;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, LD3/w0;->m0(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, LD3/k0;->j()LD3/A0;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, v1}, LD3/w0;->x0(LD3/A0;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a0(LD3/w0$c;LD3/s;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p2}, LD3/w0;->v0(LI3/q;)LD3/s;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, LD3/w0;->O0(LD3/w0$c;LD3/s;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p3}, LD3/w0;->c0(LD3/w0$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LD3/w0;->P(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .locals 2

    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LD3/k0;

    if-eqz v1, :cond_0

    check-cast v0, LD3/k0;

    invoke-interface {v0}, LD3/k0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b0(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_2

    new-instance p1, LD3/q0;

    invoke-static {p0}, LD3/w0;->L(LD3/w0;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, LD3/q0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LD3/p0;)V

    goto :goto_1

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LD3/D0;

    invoke-interface {p1}, LD3/D0;->x()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public c(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, LD3/q0;

    invoke-static {p0}, LD3/w0;->L(LD3/w0;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, LD3/q0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LD3/p0;)V

    :cond_0
    invoke-virtual {p0, p1}, LD3/w0;->U(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c0(LD3/w0$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, LD3/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LD3/z;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, LD3/z;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, LD3/w0$c;->f()Z

    move-result v2

    invoke-virtual {p1, v0}, LD3/w0$c;->i(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, LD3/w0;->f0(LD3/w0$c;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v4, v3}, LD3/w0;->O(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_2
    :goto_2
    monitor-exit p1

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    if-ne v4, v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p2, LD3/z;

    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-direct {p2, v4, v0, v3, v1}, LD3/z;-><init>(Ljava/lang/Throwable;ZILv3/g;)V

    :goto_3
    if-eqz v4, :cond_6

    invoke-virtual {p0, v4}, LD3/w0;->W(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, LD3/w0;->l0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {p2, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, LD3/z;

    invoke-virtual {v0}, LD3/z;->b()Z

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0, v4}, LD3/w0;->y0(Ljava/lang/Throwable;)V

    :cond_7
    invoke-virtual {p0, p2}, LD3/w0;->z0(Ljava/lang/Object;)V

    sget-object v0, LD3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, LD3/x0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, LD3/w0;->Z(LD3/k0;Ljava/lang/Object;)V

    return-object p2

    :goto_4
    monitor-exit p1

    throw p2
.end method

.method public d(Ll3/i$c;)Ll3/i$b;
    .locals 0

    invoke-static {p0, p1}, LD3/p0$a;->c(LD3/p0;Ll3/i$c;)Ll3/i$b;

    move-result-object p1

    return-object p1
.end method

.method public final d0(LD3/k0;)LD3/s;
    .locals 2

    instance-of v0, p1, LD3/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LD3/s;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1}, LD3/k0;->j()LD3/A0;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, LD3/w0;->v0(LI3/q;)LD3/s;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final e0(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    instance-of v0, p1, LD3/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LD3/z;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, LD3/z;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public final f0(LD3/w0$c;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LD3/w0$c;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LD3/q0;

    invoke-static {p0}, LD3/w0;->L(LD3/w0;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, LD3/q0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LD3/p0;)V

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_2

    move-object v1, v0

    :cond_3
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method public final g(LD3/t;)LD3/r;
    .locals 6

    new-instance v3, LD3/s;

    invoke-direct {v3, p1}, LD3/s;-><init>(LD3/t;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, LD3/p0$a;->d(LD3/p0;ZZLu3/l;ILjava/lang/Object;)LD3/W;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LD3/r;

    return-object p1
.end method

.method public g0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getKey()Ll3/i$c;
    .locals 1

    sget-object v0, LD3/p0;->b:LD3/p0$b;

    return-object v0
.end method

.method public getParent()LD3/p0;
    .locals 1

    invoke-virtual {p0}, LD3/w0;->j0()LD3/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, LD3/r;->getParent()LD3/p0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public h(Ll3/i;)Ll3/i;
    .locals 0

    invoke-static {p0, p1}, LD3/p0$a;->f(LD3/p0;Ll3/i;)Ll3/i;

    move-result-object p1

    return-object p1
.end method

.method public h0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 2

    :goto_0
    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LD3/w0;->F0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final i0(LD3/k0;)LD3/A0;
    .locals 3

    invoke-interface {p1}, LD3/k0;->j()LD3/A0;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, LD3/Y;

    if-eqz v0, :cond_0

    new-instance v0, LD3/A0;

    invoke-direct {v0}, LD3/A0;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LD3/v0;

    if-eqz v0, :cond_1

    check-cast p1, LD3/v0;

    invoke-virtual {p0, p1}, LD3/w0;->C0(LD3/v0;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State should have list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final j(Lu3/l;)LD3/W;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, LD3/w0;->w(ZZLu3/l;)LD3/W;

    move-result-object p1

    return-object p1
.end method

.method public final j0()LD3/r;
    .locals 1

    sget-object v0, LD3/w0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD3/r;

    return-object v0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 3

    sget-object v0, LD3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LI3/y;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    check-cast v1, LI3/y;

    invoke-virtual {v1, p0}, LI3/y;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public l0(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public m0(Ljava/lang/Throwable;)V
    .locals 0

    throw p1
.end method

.method public final n0(LD3/p0;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, LD3/B0;->e:LD3/B0;

    invoke-virtual {p0, p1}, LD3/w0;->E0(LD3/r;)V

    return-void

    :cond_0
    invoke-interface {p1}, LD3/p0;->i()Z

    invoke-interface {p1, p0}, LD3/p0;->g(LD3/t;)LD3/r;

    move-result-object p1

    invoke-virtual {p0, p1}, LD3/w0;->E0(LD3/r;)V

    invoke-virtual {p0}, LD3/w0;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, LD3/W;->a()V

    sget-object p1, LD3/B0;->e:LD3/B0;

    invoke-virtual {p0, p1}, LD3/w0;->E0(LD3/r;)V

    :cond_1
    return-void
.end method

.method public final o0()Z
    .locals 2

    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LD3/z;

    if-nez v1, :cond_1

    instance-of v1, v0, LD3/w0$c;

    if-eqz v1, :cond_0

    check-cast v0, LD3/w0$c;

    invoke-virtual {v0}, LD3/w0$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public p0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final q0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, LD3/w0$c;

    if-eqz v3, :cond_7

    monitor-enter v2

    :try_start_0
    move-object v3, v2

    check-cast v3, LD3/w0$c;

    invoke-virtual {v3}, LD3/w0$c;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, LD3/x0;->f()LI3/F;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, LD3/w0$c;

    invoke-virtual {v3}, LD3/w0$c;->f()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, LD3/w0;->b0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_3
    move-object p1, v2

    check-cast p1, LD3/w0$c;

    invoke-virtual {p1, v1}, LD3/w0$c;->a(Ljava/lang/Throwable;)V

    :cond_4
    move-object p1, v2

    check-cast p1, LD3/w0$c;

    invoke-virtual {p1}, LD3/w0$c;->e()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_5

    move-object v0, p1

    :cond_5
    monitor-exit v2

    if-eqz v0, :cond_6

    check-cast v2, LD3/w0$c;

    invoke-virtual {v2}, LD3/w0$c;->j()LD3/A0;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, LD3/w0;->w0(LD3/A0;Ljava/lang/Throwable;)V

    :cond_6
    invoke-static {}, LD3/x0;->a()LI3/F;

    move-result-object p1

    return-object p1

    :goto_0
    monitor-exit v2

    throw p1

    :cond_7
    instance-of v3, v2, LD3/k0;

    if-eqz v3, :cond_b

    if-nez v1, :cond_8

    invoke-virtual {p0, p1}, LD3/w0;->b0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_8
    move-object v3, v2

    check-cast v3, LD3/k0;

    invoke-interface {v3}, LD3/k0;->b()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, v3, v1}, LD3/w0;->L0(LD3/k0;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, LD3/x0;->a()LI3/F;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance v3, LD3/z;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5, v0}, LD3/z;-><init>(Ljava/lang/Throwable;ZILv3/g;)V

    invoke-virtual {p0, v2, v3}, LD3/w0;->M0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, LD3/x0;->a()LI3/F;

    move-result-object v4

    if-eq v3, v4, :cond_a

    invoke-static {}, LD3/x0;->b()LI3/F;

    move-result-object v2

    if-eq v3, v2, :cond_0

    return-object v3

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot happen in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-static {}, LD3/x0;->f()LI3/F;

    move-result-object p1

    return-object p1
.end method

.method public final r0(Ljava/lang/Object;)Z
    .locals 3

    :cond_0
    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LD3/w0;->M0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LD3/x0;->a()LI3/F;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    sget-object v1, LD3/x0;->b:LI3/F;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    invoke-static {}, LD3/x0;->b()LI3/F;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, LD3/w0;->P(Ljava/lang/Object;)V

    return v2
.end method

.method public final s0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :cond_0
    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LD3/w0;->M0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LD3/x0;->a()LI3/F;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-static {}, LD3/x0;->b()LI3/F;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, LD3/w0;->e0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final t0(Lu3/l;Z)LD3/v0;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    instance-of p2, p1, LD3/r0;

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, LD3/r0;

    :cond_0
    if-nez v0, :cond_4

    new-instance v0, LD3/n0;

    invoke-direct {v0, p1}, LD3/n0;-><init>(Lu3/l;)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, LD3/v0;

    if-eqz p2, :cond_2

    move-object v0, p1

    check-cast v0, LD3/v0;

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, LD3/o0;

    invoke-direct {v0, p1}, LD3/o0;-><init>(Lu3/l;)V

    :cond_4
    :goto_0
    invoke-virtual {v0, p0}, LD3/v0;->B(LD3/w0;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LD3/w0;->J0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, LD3/M;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, LD3/M;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v0(LI3/q;)LD3/s;
    .locals 1

    :goto_0
    invoke-virtual {p1}, LI3/q;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LI3/q;->t()LI3/q;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LI3/q;->s()LI3/q;

    move-result-object p1

    invoke-virtual {p1}, LI3/q;->u()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, LD3/s;

    if-eqz v0, :cond_1

    check-cast p1, LD3/s;

    return-object p1

    :cond_1
    instance-of v0, p1, LD3/A0;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final w(ZZLu3/l;)LD3/W;
    .locals 6

    invoke-virtual {p0, p3, p1}, LD3/w0;->t0(Lu3/l;Z)LD3/v0;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LD3/Y;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, LD3/Y;

    invoke-virtual {v2}, LD3/Y;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, LD3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v1, v0}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-virtual {p0, v2}, LD3/w0;->B0(LD3/Y;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, LD3/k0;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    move-object v2, v1

    check-cast v2, LD3/k0;

    invoke-interface {v2}, LD3/k0;->j()LD3/A0;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v1, v2}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LD3/v0;

    invoke-virtual {p0, v1}, LD3/w0;->C0(LD3/v0;)V

    goto :goto_0

    :cond_3
    sget-object v4, LD3/B0;->e:LD3/B0;

    if-eqz p1, :cond_8

    instance-of v5, v1, LD3/w0$c;

    if-eqz v5, :cond_8

    monitor-enter v1

    :try_start_0
    move-object v3, v1

    check-cast v3, LD3/w0$c;

    invoke-virtual {v3}, LD3/w0$c;->e()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    instance-of v5, p3, LD3/s;

    if-eqz v5, :cond_7

    move-object v5, v1

    check-cast v5, LD3/w0$c;

    invoke-virtual {v5}, LD3/w0$c;->g()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0, v1, v2, v0}, LD3/w0;->N(Ljava/lang/Object;LD3/A0;LD3/v0;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    monitor-exit v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    monitor-exit v1

    return-object v0

    :cond_6
    move-object v4, v0

    :cond_7
    :try_start_1
    sget-object v5, Lh3/n;->a:Lh3/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1

    throw p1

    :cond_8
    :goto_3
    if-eqz v3, :cond_a

    if-eqz p2, :cond_9

    invoke-interface {p3, v3}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v4

    :cond_a
    invoke-virtual {p0, v1, v2, v0}, LD3/w0;->N(Ljava/lang/Object;LD3/A0;LD3/v0;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_b
    if-eqz p2, :cond_e

    instance-of p1, v1, LD3/z;

    if-eqz p1, :cond_c

    check-cast v1, LD3/z;

    goto :goto_4

    :cond_c
    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_d

    iget-object v3, v1, LD3/z;->a:Ljava/lang/Throwable;

    :cond_d
    invoke-interface {p3, v3}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    sget-object p1, LD3/B0;->e:LD3/B0;

    return-object p1
.end method

.method public final w0(LD3/A0;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p0, p2}, LD3/w0;->y0(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, LI3/q;->r()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LI3/q;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, LD3/r0;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, LD3/v0;

    :try_start_0
    invoke-virtual {v2, p2}, LD3/B;->z(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Lh3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, LD3/C;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, LD3/C;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lh3/n;->a:Lh3/n;

    :cond_1
    :goto_1
    invoke-virtual {v0}, LI3/q;->s()LI3/q;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, LD3/w0;->m0(Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {p0, p2}, LD3/w0;->W(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public x()Ljava/util/concurrent/CancellationException;
    .locals 5

    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LD3/w0$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, LD3/w0$c;

    invoke-virtual {v1}, LD3/w0$c;->e()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v1, v0, LD3/z;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, LD3/z;

    iget-object v1, v1, LD3/z;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    instance-of v1, v0, LD3/k0;

    if-nez v1, :cond_4

    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, LD3/q0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, LD3/w0;->G0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, LD3/q0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LD3/p0;)V

    :cond_3
    return-object v2

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot be cancelling child in this state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final x0(LD3/A0;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, LI3/q;->r()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LI3/q;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, LD3/v0;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, LD3/v0;

    :try_start_0
    invoke-virtual {v2, p2}, LD3/B;->z(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Lh3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, LD3/C;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, LD3/C;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lh3/n;->a:Lh3/n;

    :cond_1
    :goto_1
    invoke-virtual {v0}, LI3/q;->s()LI3/q;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, LD3/w0;->m0(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final y(LD3/D0;)V
    .locals 0

    invoke-virtual {p0, p1}, LD3/w0;->T(Ljava/lang/Object;)Z

    return-void
.end method

.method public y0(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final z()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LD3/w0$c;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, LD3/w0$c;

    invoke-virtual {v0}, LD3/w0$c;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, LD3/M;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LD3/w0;->H0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v1, v0, LD3/k0;

    if-nez v1, :cond_3

    instance-of v1, v0, LD3/z;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, LD3/z;

    iget-object v0, v0, LD3/z;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, LD3/w0;->I0(LD3/w0;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, LD3/q0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, LD3/M;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, LD3/q0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LD3/p0;)V

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
