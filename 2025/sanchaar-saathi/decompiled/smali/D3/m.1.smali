.class public LD3/m;
.super LD3/T;
.source "SourceFile"

# interfaces
.implements LD3/l;
.implements Ln3/e;
.implements LD3/N0;


# static fields
.field public static final j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decisionAndIndex:I

.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;

.field public final h:Ll3/e;

.field public final i:Ll3/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_decisionAndIndex"

    const-class v1, LD3/m;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, LD3/m;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_state"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LD3/m;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ll3/e;I)V
    .locals 0

    invoke-direct {p0, p2}, LD3/T;-><init>(I)V

    iput-object p1, p0, LD3/m;->h:Ll3/e;

    invoke-interface {p1}, Ll3/e;->a()Ll3/i;

    move-result-object p1

    iput-object p1, p0, LD3/m;->i:Ll3/i;

    const p1, 0x1fffffff

    iput p1, p0, LD3/m;->_decisionAndIndex:I

    sget-object p1, LD3/d;->e:LD3/d;

    iput-object p1, p0, LD3/m;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic O(LD3/m;Ljava/lang/Object;ILu3/l;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, LD3/m;->N(Ljava/lang/Object;ILu3/l;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A()V
    .locals 2

    invoke-virtual {p0}, LD3/m;->B()LD3/W;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LD3/m;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, LD3/W;->a()V

    sget-object v0, LD3/m;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, LD3/B0;->e:LD3/B0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final B()LD3/W;
    .locals 7

    invoke-virtual {p0}, LD3/m;->a()Ll3/i;

    move-result-object v0

    sget-object v1, LD3/p0;->b:LD3/p0$b;

    invoke-interface {v0, v1}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LD3/p0;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v4, LD3/q;

    invoke-direct {v4, p0}, LD3/q;-><init>(LD3/m;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, LD3/p0$a;->d(LD3/p0;ZZLu3/l;ILjava/lang/Object;)LD3/W;

    move-result-object v1

    sget-object v2, LD3/m;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final C(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v3, v11, LD3/d;

    if-eqz v3, :cond_1

    sget-object v3, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, v0, v11, v1}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_1
    instance-of v3, v11, LD3/j;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    instance-of v3, v11, LI3/C;

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v0, v1, v11}, LD3/m;->G(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    instance-of v3, v11, LD3/z;

    if-eqz v3, :cond_9

    move-object v2, v11

    check-cast v2, LD3/z;

    invoke-virtual {v2}, LD3/z;->b()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v1, v11}, LD3/m;->G(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    instance-of v3, v11, LD3/p;

    if-eqz v3, :cond_8

    instance-of v3, v11, LD3/z;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_6

    iget-object v4, v2, LD3/z;->a:Ljava/lang/Throwable;

    :cond_6
    instance-of v2, v1, LD3/j;

    if-eqz v2, :cond_7

    check-cast v1, LD3/j;

    invoke-virtual {v0, v1, v4}, LD3/m;->j(LD3/j;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"

    invoke-static {v1, v2}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LI3/C;

    invoke-virtual {v0, v1, v4}, LD3/m;->m(LI3/C;Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void

    :cond_9
    instance-of v3, v11, LD3/y;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"

    if-eqz v3, :cond_d

    move-object v12, v11

    check-cast v12, LD3/y;

    iget-object v3, v12, LD3/y;->b:LD3/j;

    if-eqz v3, :cond_a

    invoke-virtual {v0, v1, v11}, LD3/m;->G(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    instance-of v3, v1, LI3/C;

    if-eqz v3, :cond_b

    return-void

    :cond_b
    invoke-static {v1, v4}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v1

    check-cast v14, LD3/j;

    invoke-virtual {v12}, LD3/y;->c()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v1, v12, LD3/y;->e:Ljava/lang/Throwable;

    invoke-virtual {v0, v14, v1}, LD3/m;->j(LD3/j;Ljava/lang/Throwable;)V

    return-void

    :cond_c
    const/16 v18, 0x1d

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, LD3/y;->b(LD3/y;Ljava/lang/Object;LD3/j;Lu3/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)LD3/y;

    move-result-object v3

    sget-object v4, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v11, v3}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_d
    instance-of v3, v1, LI3/C;

    if-eqz v3, :cond_e

    return-void

    :cond_e
    invoke-static {v1, v4}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, LD3/j;

    new-instance v12, LD3/y;

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v12

    move-object v4, v11

    invoke-direct/range {v3 .. v10}, LD3/y;-><init>(Ljava/lang/Object;LD3/j;Lu3/l;Ljava/lang/Object;Ljava/lang/Throwable;ILv3/g;)V

    sget-object v3, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, v0, v11, v12}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void
.end method

.method public D()Z
    .locals 1

    invoke-virtual {p0}, LD3/m;->y()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, LD3/C0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final E()Z
    .locals 2

    iget v0, p0, LD3/T;->g:I

    invoke-static {v0}, LD3/U;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LD3/m;->h:Ll3/e;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LI3/j;

    invoke-virtual {v0}, LI3/j;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final F(Lu3/l;)LD3/j;
    .locals 1

    instance-of v0, p1, LD3/j;

    if-eqz v0, :cond_0

    check-cast p1, LD3/j;

    goto :goto_0

    :cond_0
    new-instance v0, LD3/m0;

    invoke-direct {v0, p1}, LD3/m0;-><init>(Lu3/l;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final G(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public I(Lu3/l;)V
    .locals 0

    invoke-virtual {p0, p1}, LD3/m;->F(Lu3/l;)LD3/j;

    move-result-object p1

    invoke-virtual {p0, p1}, LD3/m;->C(Ljava/lang/Object;)V

    return-void
.end method

.method public final J(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0, p1}, LD3/m;->o(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, LD3/m;->n(Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, LD3/m;->r()V

    return-void
.end method

.method public K(Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, LD3/T;->g:I

    invoke-virtual {p0, p1}, LD3/m;->s(I)V

    return-void
.end method

.method public final L()V
    .locals 2

    iget-object v0, p0, LD3/m;->h:Ll3/e;

    instance-of v1, v0, LI3/j;

    if-eqz v1, :cond_0

    check-cast v0, LI3/j;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, LI3/j;->p(LD3/l;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, LD3/m;->p()V

    invoke-virtual {p0, v0}, LD3/m;->n(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final M()Z
    .locals 3

    sget-object v0, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LD3/y;

    if-eqz v2, :cond_0

    check-cast v1, LD3/y;

    iget-object v1, v1, LD3/y;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LD3/m;->p()V

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, LD3/m;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v2, 0x1fffffff

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v1, LD3/d;->e:LD3/d;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final N(Ljava/lang/Object;ILu3/l;)V
    .locals 9

    sget-object v0, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LD3/C0;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, LD3/C0;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, LD3/m;->P(LD3/C0;Ljava/lang/Object;ILu3/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LD3/m;->r()V

    invoke-virtual {p0, p2}, LD3/m;->s(I)V

    return-void

    :cond_1
    instance-of p2, v1, LD3/p;

    if-eqz p2, :cond_3

    check-cast v1, LD3/p;

    invoke-virtual {v1}, LD3/p;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iget-object p1, v1, LD3/z;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, LD3/m;->k(Lu3/l;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p1}, LD3/m;->i(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lh3/c;

    invoke-direct {p1}, Lh3/c;-><init>()V

    throw p1
.end method

.method public final P(LD3/C0;Ljava/lang/Object;ILu3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, LD3/z;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p3}, LD3/U;->b(I)Z

    move-result p3

    if-nez p3, :cond_1

    if-nez p5, :cond_1

    goto :goto_2

    :cond_1
    if-nez p4, :cond_2

    instance-of p3, p1, LD3/j;

    if-nez p3, :cond_2

    if-eqz p5, :cond_4

    :cond_2
    new-instance p3, LD3/y;

    instance-of v0, p1, LD3/j;

    if-eqz v0, :cond_3

    check-cast p1, LD3/j;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, LD3/y;-><init>(Ljava/lang/Object;LD3/j;Lu3/l;Ljava/lang/Object;Ljava/lang/Throwable;ILv3/g;)V

    move-object p2, p3

    :cond_4
    :goto_2
    return-object p2
.end method

.method public final Q()Z
    .locals 6

    sget-object v0, LD3/m;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v2, LD3/m;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v4, 0x1fffffff

    and-int/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    add-int/2addr v5, v4

    invoke-virtual {v2, p0, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method

.method public final R(Ljava/lang/Object;Ljava/lang/Object;Lu3/l;)LI3/F;
    .locals 9

    sget-object v0, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LD3/C0;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, LD3/C0;

    iget v6, p0, LD3/T;->g:I

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, LD3/m;->P(LD3/C0;Ljava/lang/Object;ILu3/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LD3/m;->r()V

    sget-object p1, LD3/n;->a:LI3/F;

    return-object p1

    :cond_1
    instance-of p1, v1, LD3/y;

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    check-cast v1, LD3/y;

    iget-object p1, v1, LD3/y;->d:Ljava/lang/Object;

    if-ne p1, p2, :cond_2

    sget-object p3, LD3/n;->a:LI3/F;

    :cond_2
    return-object p3
.end method

.method public final S()Z
    .locals 5

    sget-object v0, LD3/m;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v2, LD3/m;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v3, 0x1fffffff

    and-int/2addr v3, v1

    const/high16 v4, 0x20000000

    add-int/2addr v4, v3

    invoke-virtual {v2, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public a()Ll3/i;
    .locals 1

    iget-object v0, p0, LD3/m;->i:Ll3/i;

    return-object v0
.end method

.method public b(LI3/C;I)V
    .locals 4

    sget-object v0, LD3/m;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_1

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LD3/m;->C(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invokeOnCancellation should be called at most once"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v2, v10, LD3/C0;

    if-nez v2, :cond_4

    instance-of v2, v10, LD3/z;

    if-eqz v2, :cond_1

    return-void

    :cond_1
    instance-of v2, v10, LD3/y;

    if-eqz v2, :cond_3

    move-object v2, v10

    check-cast v2, LD3/y;

    invoke-virtual {v2}, LD3/y;->c()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v17, 0xf

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    move-object/from16 v16, p2

    invoke-static/range {v11 .. v18}, LD3/y;->b(LD3/y;Ljava/lang/Object;LD3/j;Lu3/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)LD3/y;

    move-result-object v3

    sget-object v4, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v10, v3}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v11, p2

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0, v11}, LD3/y;->d(LD3/m;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be called at most once"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object/from16 v11, p2

    sget-object v12, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v13, LD3/y;

    const/16 v8, 0xe

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v9}, LD3/y;-><init>(Ljava/lang/Object;LD3/j;Lu3/l;Ljava/lang/Object;Ljava/lang/Throwable;ILv3/g;)V

    invoke-static {v12, v0, v10, v13}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not completed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final d()Ll3/e;
    .locals 1

    iget-object v0, p0, LD3/m;->h:Ll3/e;

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, LD3/T;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, LD3/y;

    if-eqz v0, :cond_0

    check-cast p1, LD3/y;

    iget-object p1, p1, LD3/y;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LD3/m;->y()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already resumed, but proposed with update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(LD3/j;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1, p2}, LD3/k;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, LD3/m;->a()Ll3/i;

    move-result-object p2

    new-instance v0, LD3/C;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LD3/C;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, LD3/H;->a(Ll3/i;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final k(Lu3/l;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    invoke-interface {p1, p2}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, LD3/m;->a()Ll3/i;

    move-result-object p2

    new-instance v0, LD3/C;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LD3/C;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, LD3/H;->a(Ll3/i;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public l()Ln3/e;
    .locals 2

    iget-object v0, p0, LD3/m;->h:Ll3/e;

    instance-of v1, v0, Ln3/e;

    if-eqz v1, :cond_0

    check-cast v0, Ln3/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final m(LI3/C;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, LD3/m;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, LD3/m;->a()Ll3/i;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, LI3/C;->o(ILjava/lang/Throwable;Ll3/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, LD3/m;->a()Ll3/i;

    move-result-object p2

    new-instance v0, LD3/C;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LD3/C;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, LD3/H;->a(Ll3/i;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The index for Segment.onCancellation(..) is broken"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Ljava/lang/Throwable;)Z
    .locals 6

    sget-object v0, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LD3/C0;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    new-instance v2, LD3/p;

    instance-of v4, v1, LD3/j;

    const/4 v5, 0x1

    if-nez v4, :cond_2

    instance-of v4, v1, LI3/C;

    if-eqz v4, :cond_3

    :cond_2
    move v3, v5

    :cond_3
    invoke-direct {v2, p0, p1, v3}, LD3/p;-><init>(Ll3/e;Ljava/lang/Throwable;Z)V

    sget-object v3, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, LD3/C0;

    instance-of v2, v0, LD3/j;

    if-eqz v2, :cond_4

    check-cast v1, LD3/j;

    invoke-virtual {p0, v1, p1}, LD3/m;->j(LD3/j;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    instance-of v0, v0, LI3/C;

    if-eqz v0, :cond_5

    check-cast v1, LI3/C;

    invoke-virtual {p0, v1, p1}, LD3/m;->m(LI3/C;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, LD3/m;->r()V

    iget p1, p0, LD3/T;->g:I

    invoke-virtual {p0, p1}, LD3/m;->s(I)V

    return v5
.end method

.method public final o(Ljava/lang/Throwable;)Z
    .locals 2

    invoke-virtual {p0}, LD3/m;->E()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, LD3/m;->h:Ll3/e;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LI3/j;

    invoke-virtual {v0, p1}, LI3/j;->n(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final p()V
    .locals 2

    invoke-virtual {p0}, LD3/m;->w()LD3/W;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, LD3/W;->a()V

    sget-object v0, LD3/m;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, LD3/B0;->e:LD3/B0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public q(Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1, p0}, LD3/D;->b(Ljava/lang/Object;LD3/l;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, LD3/T;->g:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, LD3/m;->O(LD3/m;Ljava/lang/Object;ILu3/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final r()V
    .locals 1

    invoke-virtual {p0}, LD3/m;->E()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LD3/m;->p()V

    :cond_0
    return-void
.end method

.method public final s(I)V
    .locals 1

    invoke-virtual {p0}, LD3/m;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, LD3/U;->a(LD3/T;I)V

    return-void
.end method

.method public t(LD3/p0;)Ljava/lang/Throwable;
    .locals 0

    invoke-interface {p1}, LD3/p0;->z()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LD3/m;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LD3/m;->h:Ll3/e;

    invoke-static {v1}, LD3/M;->c(Ll3/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LD3/m;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, LD3/M;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Object;Ljava/lang/Object;Lu3/l;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LD3/m;->R(Ljava/lang/Object;Ljava/lang/Object;Lu3/l;)LI3/F;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/Object;Lu3/l;)V
    .locals 1

    iget v0, p0, LD3/T;->g:I

    invoke-virtual {p0, p1, v0, p2}, LD3/m;->N(Ljava/lang/Object;ILu3/l;)V

    return-void
.end method

.method public final w()LD3/W;
    .locals 1

    sget-object v0, LD3/m;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD3/W;

    return-object v0
.end method

.method public final x()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, LD3/m;->E()Z

    move-result v0

    invoke-virtual {p0}, LD3/m;->S()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LD3/m;->w()LD3/W;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, LD3/m;->B()LD3/W;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, LD3/m;->L()V

    :cond_1
    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, LD3/m;->L()V

    :cond_3
    invoke-virtual {p0}, LD3/m;->y()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LD3/z;

    if-nez v1, :cond_6

    iget v1, p0, LD3/T;->g:I

    invoke-static {v1}, LD3/U;->b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, LD3/m;->a()Ll3/i;

    move-result-object v1

    sget-object v2, LD3/p0;->b:LD3/p0$b;

    invoke-interface {v1, v2}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v1

    check-cast v1, LD3/p0;

    if-eqz v1, :cond_5

    invoke-interface {v1}, LD3/p0;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v1}, LD3/p0;->z()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LD3/m;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, LD3/m;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    check-cast v0, LD3/z;

    iget-object v0, v0, LD3/z;->a:Ljava/lang/Throwable;

    throw v0
.end method

.method public final y()Ljava/lang/Object;
    .locals 1

    sget-object v0, LD3/m;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, LD3/m;->y()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LD3/C0;

    if-eqz v1, :cond_0

    const-string v0, "Active"

    goto :goto_0

    :cond_0
    instance-of v0, v0, LD3/p;

    if-eqz v0, :cond_1

    const-string v0, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v0, "Completed"

    :goto_0
    return-object v0
.end method
