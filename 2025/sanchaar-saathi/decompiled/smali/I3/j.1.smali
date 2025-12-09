.class public final LI3/j;
.super LD3/T;
.source "SourceFile"

# interfaces
.implements Ln3/e;
.implements Ll3/e;


# static fields
.field public static final l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;

.field public final h:LD3/F;

.field public final i:Ll3/e;

.field public j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation"

    const-class v2, LI3/j;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LI3/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(LD3/F;Ll3/e;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, LD3/T;-><init>(I)V

    iput-object p1, p0, LI3/j;->h:LD3/F;

    iput-object p2, p0, LI3/j;->i:Ll3/e;

    invoke-static {}, LI3/k;->a()LI3/F;

    move-result-object p1

    iput-object p1, p0, LI3/j;->j:Ljava/lang/Object;

    invoke-virtual {p0}, LI3/j;->a()Ll3/i;

    move-result-object p1

    invoke-static {p1}, LI3/J;->b(Ll3/i;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LI3/j;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ll3/i;
    .locals 1

    iget-object v0, p0, LI3/j;->i:Ll3/e;

    invoke-interface {v0}, Ll3/e;->a()Ll3/i;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p1, LD3/A;

    if-eqz v0, :cond_0

    check-cast p1, LD3/A;

    iget-object p1, p1, LD3/A;->b:Lu3/l;

    invoke-interface {p1, p2}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()Ll3/e;
    .locals 0

    return-object p0
.end method

.method public h()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LI3/j;->j:Ljava/lang/Object;

    invoke-static {}, LI3/k;->a()LI3/F;

    move-result-object v1

    iput-object v1, p0, LI3/j;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final i()V
    .locals 3

    sget-object v0, LI3/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LI3/k;->b:LI3/F;

    if-eq v1, v2, :cond_0

    return-void
.end method

.method public final j()LD3/m;
    .locals 4

    sget-object v0, LI3/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, LI3/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, LI3/k;->b:LI3/F;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    instance-of v2, v1, LD3/m;

    if-eqz v2, :cond_2

    sget-object v2, LI3/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, LI3/k;->b:LI3/F;

    invoke-static {v2, p0, v1, v3}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, LD3/m;

    return-object v1

    :cond_2
    sget-object v2, LI3/k;->b:LI3/F;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()LD3/m;
    .locals 2

    sget-object v0, LI3/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LD3/m;

    if-eqz v1, :cond_0

    check-cast v0, LD3/m;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public l()Ln3/e;
    .locals 2

    iget-object v0, p0, LI3/j;->i:Ll3/e;

    instance-of v1, v0, Ln3/e;

    if-eqz v1, :cond_0

    check-cast v0, Ln3/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final m()Z
    .locals 1

    sget-object v0, LI3/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n(Ljava/lang/Throwable;)Z
    .locals 5

    sget-object v0, LI3/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LI3/k;->b:LI3/F;

    invoke-static {v1, v2}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    sget-object v1, LI3/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v2, p1}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_1
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    return v4

    :cond_2
    sget-object v2, LI3/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-static {v2, p0, v1, v3}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final o()V
    .locals 1

    invoke-virtual {p0}, LI3/j;->i()V

    invoke-virtual {p0}, LI3/j;->k()LD3/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LD3/m;->p()V

    :cond_0
    return-void
.end method

.method public final p(LD3/l;)Ljava/lang/Throwable;
    .locals 4

    sget-object v0, LI3/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LI3/k;->b:LI3/F;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    sget-object v1, LI3/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v2, p1}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    :cond_1
    instance-of p1, v1, Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    sget-object p1, LI3/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p1, p0, v1, v3}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LI3/j;->i:Ll3/e;

    invoke-interface {v0}, Ll3/e;->a()Ll3/i;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v1}, LD3/D;->d(Ljava/lang/Object;Lu3/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, LI3/j;->h:LD3/F;

    invoke-virtual {v4, v0}, LD3/F;->L(Ll3/i;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iput-object v3, p0, LI3/j;->j:Ljava/lang/Object;

    iput v5, p0, LD3/T;->g:I

    iget-object p1, p0, LI3/j;->h:LD3/F;

    invoke-virtual {p1, v0, p0}, LD3/F;->K(Ll3/i;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_0
    sget-object v0, LD3/J0;->a:LD3/J0;

    invoke-virtual {v0}, LD3/J0;->b()LD3/Z;

    move-result-object v0

    invoke-virtual {v0}, LD3/Z;->U()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, LI3/j;->j:Ljava/lang/Object;

    iput v5, p0, LD3/T;->g:I

    invoke-virtual {v0, p0}, LD3/Z;->Q(LD3/T;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v2}, LD3/Z;->S(Z)V

    :try_start_0
    invoke-virtual {p0}, LI3/j;->a()Ll3/i;

    move-result-object v3

    iget-object v4, p0, LI3/j;->k:Ljava/lang/Object;

    invoke-static {v3, v4}, LI3/J;->c(Ll3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, LI3/j;->i:Ll3/e;

    invoke-interface {v5, p1}, Ll3/e;->q(Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v4}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, LD3/Z;->X()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    :goto_0
    invoke-virtual {v0, v2}, LD3/Z;->N(Z)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v3, v4}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-virtual {p0, p1, v1}, LD3/T;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :goto_2
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v2}, LD3/Z;->N(Z)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LI3/j;->h:LD3/F;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LI3/j;->i:Ll3/e;

    invoke-static {v1}, LD3/M;->c(Ll3/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
