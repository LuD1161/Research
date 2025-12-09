.class public Lio/flutter/view/d$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public A:I

.field public B:Lio/flutter/view/d$p;

.field public C:Z

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:F

.field public I:F

.field public J:F

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:F

.field public N:F

.field public O:F

.field public P:F

.field public Q:[F

.field public R:Lio/flutter/view/d$l;

.field public S:Ljava/util/List;

.field public T:Ljava/util/List;

.field public U:Ljava/util/List;

.field public V:Lio/flutter/view/d$h;

.field public W:Lio/flutter/view/d$h;

.field public X:Z

.field public Y:[F

.field public Z:Z

.field public final a:Lio/flutter/view/d;

.field public a0:[F

.field public b:I

.field public b0:Landroid/graphics/Rect;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:F

.field public m:F

.field public n:F

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/util/List;

.field public r:Ljava/lang/String;

.field public s:Ljava/util/List;

.field public t:Ljava/lang/String;

.field public u:Ljava/util/List;

.field public v:Ljava/lang/String;

.field public w:Ljava/util/List;

.field public x:Ljava/lang/String;

.field public y:Ljava/util/List;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/flutter/view/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/flutter/view/d$l;->b:I

    iput v0, p0, Lio/flutter/view/d$l;->A:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/view/d$l;->C:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/view/d$l;->S:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/view/d$l;->T:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/view/d$l;->X:Z

    iput-boolean v0, p0, Lio/flutter/view/d$l;->Z:Z

    iput-object p1, p0, Lio/flutter/view/d$l;->a:Lio/flutter/view/d;

    return-void
.end method

.method public static synthetic A(Lio/flutter/view/d$l;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lio/flutter/view/d$l;->r0()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lio/flutter/view/d$l;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lio/flutter/view/d$l;->t0()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lio/flutter/view/d$l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->z:Ljava/lang/String;

    return-object p0
.end method

.method public static C0(Lio/flutter/view/d$l;Lg3/d;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lio/flutter/view/d$l;->l0(Lg3/d;)Lio/flutter/view/d$l;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic D(Lio/flutter/view/d$l;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->U:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic E(Lio/flutter/view/d$l;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->S:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic F(Lio/flutter/view/d$l;)I
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->d:I

    return p0
.end method

.method public static synthetic G(Lio/flutter/view/d$l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->t:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic H(Lio/flutter/view/d$l;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/flutter/view/d$l;->s:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic I(Lio/flutter/view/d$l;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->u:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic J(Lio/flutter/view/d$l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->v:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic K(Lio/flutter/view/d$l;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->w:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic L(Lio/flutter/view/d$l;[FZ)Lio/flutter/view/d$l;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/flutter/view/d$l;->y0([FZ)Lio/flutter/view/d$l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lio/flutter/view/d$l;Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/flutter/view/d$l;->F0(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic N(Lio/flutter/view/d$l;)Z
    .locals 0

    iget-boolean p0, p0, Lio/flutter/view/d$l;->C:Z

    return p0
.end method

.method public static synthetic O(Lio/flutter/view/d$l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/flutter/view/d$l;->Z:Z

    return p1
.end method

.method public static synthetic P(Lio/flutter/view/d$l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/flutter/view/d$l;->X:Z

    return p1
.end method

.method public static synthetic Q(Lio/flutter/view/d$l;[FLjava/util/Set;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/flutter/view/d$l;->E0([FLjava/util/Set;Z)V

    return-void
.end method

.method public static synthetic R(Lio/flutter/view/d$l;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/flutter/view/d$l;->g0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic S(Lio/flutter/view/d$l;)Z
    .locals 0

    invoke-virtual {p0}, Lio/flutter/view/d$l;->j0()Z

    move-result p0

    return p0
.end method

.method public static synthetic T(Lio/flutter/view/d$l;)F
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->l:F

    return p0
.end method

.method public static synthetic U(Lio/flutter/view/d$l;)F
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->m:F

    return p0
.end method

.method public static synthetic V(Lio/flutter/view/d$l;)F
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->n:F

    return p0
.end method

.method public static synthetic W(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/flutter/view/d$l;->u0(Lio/flutter/view/d$g;)Z

    move-result p0

    return p0
.end method

.method public static synthetic X(Lio/flutter/view/d$l;)I
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->k:I

    return p0
.end method

.method public static synthetic Y(Lio/flutter/view/d$l;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->T:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic Z(Lio/flutter/view/d$l;)Z
    .locals 0

    invoke-virtual {p0}, Lio/flutter/view/d$l;->i0()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lio/flutter/view/d$l;)I
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->b:I

    return p0
.end method

.method public static synthetic a0(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/flutter/view/d$l;->v0(Lio/flutter/view/d$i;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lio/flutter/view/d$l;I)I
    .locals 0

    iput p1, p0, Lio/flutter/view/d$l;->b:I

    return p1
.end method

.method public static synthetic b0(Lio/flutter/view/d$l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lio/flutter/view/d$l;)I
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->j:I

    return p0
.end method

.method public static synthetic c0(Lio/flutter/view/d$l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->K:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lio/flutter/view/d$l;Lg3/d;)Z
    .locals 0

    invoke-static {p0, p1}, Lio/flutter/view/d$l;->C0(Lio/flutter/view/d$l;Lg3/d;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d0(Lio/flutter/view/d$l;)I
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->F:I

    return p0
.end method

.method public static synthetic e(Lio/flutter/view/d$l;)I
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->i:I

    return p0
.end method

.method public static synthetic e0(Lio/flutter/view/d$l;)I
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->G:I

    return p0
.end method

.method public static synthetic f(Lio/flutter/view/d$l;)Landroid/graphics/Rect;
    .locals 0

    invoke-virtual {p0}, Lio/flutter/view/d$l;->m0()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lio/flutter/view/d$l;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lio/flutter/view/d$l;->p0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lio/flutter/view/d$l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lio/flutter/view/d$l;)Z
    .locals 0

    invoke-virtual {p0}, Lio/flutter/view/d$l;->z0()Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/flutter/view/d$l;->x0(Lio/flutter/view/d$i;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lio/flutter/view/d$l;)I
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->g:I

    return p0
.end method

.method public static synthetic k(Lio/flutter/view/d$l;I)I
    .locals 0

    iput p1, p0, Lio/flutter/view/d$l;->g:I

    return p1
.end method

.method public static synthetic l(Lio/flutter/view/d$l;)I
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->h:I

    return p0
.end method

.method public static synthetic m(Lio/flutter/view/d$l;I)I
    .locals 0

    iput p1, p0, Lio/flutter/view/d$l;->h:I

    return p1
.end method

.method public static synthetic n(Lio/flutter/view/d$l;I)I
    .locals 1

    iget v0, p0, Lio/flutter/view/d$l;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/flutter/view/d$l;->h:I

    return v0
.end method

.method public static synthetic o(Lio/flutter/view/d$l;I)I
    .locals 1

    iget v0, p0, Lio/flutter/view/d$l;->h:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/flutter/view/d$l;->h:I

    return v0
.end method

.method public static synthetic p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/flutter/view/d$l;->w0(Lio/flutter/view/d$g;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lio/flutter/view/d$l;)I
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->e:I

    return p0
.end method

.method public static synthetic r(Lio/flutter/view/d$l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s(Lio/flutter/view/d$l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/flutter/view/d$l;->r:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic t(Lio/flutter/view/d$l;)I
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->f:I

    return p0
.end method

.method public static synthetic u(Lio/flutter/view/d$l;)Lio/flutter/view/d$l;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->R:Lio/flutter/view/d$l;

    return-object p0
.end method

.method public static synthetic v(Lio/flutter/view/d$l;Lio/flutter/view/d$l;)Lio/flutter/view/d$l;
    .locals 0

    iput-object p1, p0, Lio/flutter/view/d$l;->R:Lio/flutter/view/d$l;

    return-object p1
.end method

.method public static synthetic w(Lio/flutter/view/d$l;)I
    .locals 0

    iget p0, p0, Lio/flutter/view/d$l;->A:I

    return p0
.end method

.method public static synthetic x(Lio/flutter/view/d$l;)Lio/flutter/view/d$h;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->V:Lio/flutter/view/d$h;

    return-object p0
.end method

.method public static synthetic y(Lio/flutter/view/d$l;)Lio/flutter/view/d$h;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d$l;->W:Lio/flutter/view/d$h;

    return-object p0
.end method

.method public static synthetic z(Lio/flutter/view/d$l;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lio/flutter/view/d$l;->s0()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0(FFFF)F
    .locals 0

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public final B0(FFFF)F
    .locals 0

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public final D0([F[F[F)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/4 p2, 0x3

    aget p3, p1, p2

    const/4 v0, 0x0

    aget v1, p1, v0

    div-float/2addr v1, p3

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    div-float/2addr v1, p3

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p1, v0

    div-float/2addr v1, p3

    aput v1, p1, v0

    const/4 p3, 0x0

    aput p3, p1, p2

    return-void
.end method

.method public final E0([FLjava/util/Set;Z)V
    .locals 12

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lio/flutter/view/d$l;->Z:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p3, v1

    :cond_0
    if-eqz p3, :cond_4

    iget-object v0, p0, Lio/flutter/view/d$l;->a0:[F

    const/16 v2, 0x10

    if-nez v0, :cond_1

    new-array v0, v2, [F

    iput-object v0, p0, Lio/flutter/view/d$l;->a0:[F

    :cond_1
    iget-object v0, p0, Lio/flutter/view/d$l;->Q:[F

    if-nez v0, :cond_2

    new-array v0, v2, [F

    iput-object v0, p0, Lio/flutter/view/d$l;->Q:[F

    :cond_2
    iget-object v2, p0, Lio/flutter/view/d$l;->a0:[F

    iget-object v6, p0, Lio/flutter/view/d$l;->Q:[F

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 p1, 0x4

    new-array v0, p1, [F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    new-array v2, p1, [F

    new-array v3, p1, [F

    new-array v4, p1, [F

    new-array p1, p1, [F

    iget v5, p0, Lio/flutter/view/d$l;->M:F

    const/4 v6, 0x0

    aput v5, v0, v6

    iget v5, p0, Lio/flutter/view/d$l;->N:F

    aput v5, v0, v1

    iget-object v5, p0, Lio/flutter/view/d$l;->a0:[F

    invoke-virtual {p0, v2, v5, v0}, Lio/flutter/view/d$l;->D0([F[F[F)V

    iget v5, p0, Lio/flutter/view/d$l;->O:F

    aput v5, v0, v6

    iget v5, p0, Lio/flutter/view/d$l;->N:F

    aput v5, v0, v1

    iget-object v5, p0, Lio/flutter/view/d$l;->a0:[F

    invoke-virtual {p0, v3, v5, v0}, Lio/flutter/view/d$l;->D0([F[F[F)V

    iget v5, p0, Lio/flutter/view/d$l;->O:F

    aput v5, v0, v6

    iget v5, p0, Lio/flutter/view/d$l;->P:F

    aput v5, v0, v1

    iget-object v5, p0, Lio/flutter/view/d$l;->a0:[F

    invoke-virtual {p0, v4, v5, v0}, Lio/flutter/view/d$l;->D0([F[F[F)V

    iget v5, p0, Lio/flutter/view/d$l;->M:F

    aput v5, v0, v6

    iget v5, p0, Lio/flutter/view/d$l;->P:F

    aput v5, v0, v1

    iget-object v5, p0, Lio/flutter/view/d$l;->a0:[F

    invoke-virtual {p0, p1, v5, v0}, Lio/flutter/view/d$l;->D0([F[F[F)V

    iget-object v0, p0, Lio/flutter/view/d$l;->b0:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/flutter/view/d$l;->b0:Landroid/graphics/Rect;

    :cond_3
    iget-object v0, p0, Lio/flutter/view/d$l;->b0:Landroid/graphics/Rect;

    aget v5, v2, v6

    aget v7, v3, v6

    aget v8, v4, v6

    aget v9, p1, v6

    invoke-virtual {p0, v5, v7, v8, v9}, Lio/flutter/view/d$l;->B0(FFFF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aget v7, v2, v1

    aget v8, v3, v1

    aget v9, v4, v1

    aget v10, p1, v1

    invoke-virtual {p0, v7, v8, v9, v10}, Lio/flutter/view/d$l;->B0(FFFF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aget v8, v2, v6

    aget v9, v3, v6

    aget v10, v4, v6

    aget v11, p1, v6

    invoke-virtual {p0, v8, v9, v10, v11}, Lio/flutter/view/d$l;->A0(FFFF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    aget v2, v2, v1

    aget v3, v3, v1

    aget v4, v4, v1

    aget p1, p1, v1

    invoke-virtual {p0, v2, v3, v4, p1}, Lio/flutter/view/d$l;->A0(FFFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, v5, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v6, p0, Lio/flutter/view/d$l;->Z:Z

    :cond_4
    iget-object p1, p0, Lio/flutter/view/d$l;->S:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/d$l;

    iput v0, v1, Lio/flutter/view/d$l;->A:I

    iget v0, v1, Lio/flutter/view/d$l;->b:I

    iget-object v2, p0, Lio/flutter/view/d$l;->a0:[F

    invoke-virtual {v1, v2, p2, p3}, Lio/flutter/view/d$l;->E0([FLjava/util/Set;Z)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final F0(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/view/d$l;->C:Z

    iget-object v1, p0, Lio/flutter/view/d$l;->r:Ljava/lang/String;

    iput-object v1, p0, Lio/flutter/view/d$l;->K:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/view/d$l;->p:Ljava/lang/String;

    iput-object v1, p0, Lio/flutter/view/d$l;->L:Ljava/lang/String;

    iget v1, p0, Lio/flutter/view/d$l;->c:I

    iput v1, p0, Lio/flutter/view/d$l;->D:I

    iget v1, p0, Lio/flutter/view/d$l;->d:I

    iput v1, p0, Lio/flutter/view/d$l;->E:I

    iget v1, p0, Lio/flutter/view/d$l;->g:I

    iput v1, p0, Lio/flutter/view/d$l;->F:I

    iget v1, p0, Lio/flutter/view/d$l;->h:I

    iput v1, p0, Lio/flutter/view/d$l;->G:I

    iget v1, p0, Lio/flutter/view/d$l;->l:F

    iput v1, p0, Lio/flutter/view/d$l;->H:F

    iget v1, p0, Lio/flutter/view/d$l;->m:F

    iput v1, p0, Lio/flutter/view/d$l;->I:F

    iget v1, p0, Lio/flutter/view/d$l;->n:F

    iput v1, p0, Lio/flutter/view/d$l;->J:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/d$l;->c:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/d$l;->d:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/d$l;->e:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/d$l;->f:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/d$l;->g:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/d$l;->h:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/d$l;->i:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/d$l;->j:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/d$l;->k:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/d$l;->l:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/d$l;->m:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/d$l;->n:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    aget-object v1, p2, v1

    :goto_0
    iput-object v1, p0, Lio/flutter/view/d$l;->o:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v3, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    aget-object v1, p2, v1

    :goto_1
    iput-object v1, p0, Lio/flutter/view/d$l;->p:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lio/flutter/view/d$l;->q0(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/d$l;->q:Ljava/util/List;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v3, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    aget-object v1, p2, v1

    :goto_2
    iput-object v1, p0, Lio/flutter/view/d$l;->r:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lio/flutter/view/d$l;->q0(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/d$l;->s:Ljava/util/List;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v3, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    aget-object v1, p2, v1

    :goto_3
    iput-object v1, p0, Lio/flutter/view/d$l;->t:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lio/flutter/view/d$l;->q0(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/d$l;->u:Ljava/util/List;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v3, :cond_4

    move-object v1, v2

    goto :goto_4

    :cond_4
    aget-object v1, p2, v1

    :goto_4
    iput-object v1, p0, Lio/flutter/view/d$l;->v:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lio/flutter/view/d$l;->q0(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/d$l;->w:Ljava/util/List;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v3, :cond_5

    move-object v1, v2

    goto :goto_5

    :cond_5
    aget-object v1, p2, v1

    :goto_5
    iput-object v1, p0, Lio/flutter/view/d$l;->x:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lio/flutter/view/d$l;->q0(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lio/flutter/view/d$l;->y:Ljava/util/List;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p3

    if-ne p3, v3, :cond_6

    move-object p2, v2

    goto :goto_6

    :cond_6
    aget-object p2, p2, p3

    :goto_6
    iput-object p2, p0, Lio/flutter/view/d$l;->z:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    invoke-static {p2}, Lio/flutter/view/d$p;->f(I)Lio/flutter/view/d$p;

    move-result-object p2

    iput-object p2, p0, Lio/flutter/view/d$l;->B:Lio/flutter/view/d$p;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/d$l;->M:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/d$l;->N:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/d$l;->O:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/d$l;->P:F

    iget-object p2, p0, Lio/flutter/view/d$l;->Q:[F

    const/16 p3, 0x10

    if-nez p2, :cond_7

    new-array p2, p3, [F

    iput-object p2, p0, Lio/flutter/view/d$l;->Q:[F

    :cond_7
    const/4 p2, 0x0

    move v1, p2

    :goto_7
    if-ge v1, p3, :cond_8

    iget-object v3, p0, Lio/flutter/view/d$l;->Q:[F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    iput-boolean v0, p0, Lio/flutter/view/d$l;->X:Z

    iput-boolean v0, p0, Lio/flutter/view/d$l;->Z:Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p3

    iget-object v0, p0, Lio/flutter/view/d$l;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lio/flutter/view/d$l;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, p2

    :goto_8
    if-ge v0, p3, :cond_9

    iget-object v1, p0, Lio/flutter/view/d$l;->a:Lio/flutter/view/d;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v1, v3}, Lio/flutter/view/d;->m(Lio/flutter/view/d;I)Lio/flutter/view/d$l;

    move-result-object v1

    iput-object p0, v1, Lio/flutter/view/d$l;->R:Lio/flutter/view/d$l;

    iget-object v3, p0, Lio/flutter/view/d$l;->S:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    move v0, p2

    :goto_9
    if-ge v0, p3, :cond_a

    iget-object v1, p0, Lio/flutter/view/d$l;->a:Lio/flutter/view/d;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v1, v3}, Lio/flutter/view/d;->m(Lio/flutter/view/d;I)Lio/flutter/view/d$l;

    move-result-object v1

    iput-object p0, v1, Lio/flutter/view/d$l;->R:Lio/flutter/view/d$l;

    iget-object v3, p0, Lio/flutter/view/d$l;->T:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p3

    if-nez p3, :cond_b

    iput-object v2, p0, Lio/flutter/view/d$l;->U:Ljava/util/List;

    goto :goto_c

    :cond_b
    iget-object v0, p0, Lio/flutter/view/d$l;->U:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/view/d$l;->U:Ljava/util/List;

    goto :goto_a

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_a
    if-ge p2, p3, :cond_f

    iget-object v0, p0, Lio/flutter/view/d$l;->a:Lio/flutter/view/d;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v0, v1}, Lio/flutter/view/d;->n(Lio/flutter/view/d;I)Lio/flutter/view/d$h;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/view/d$h;->i(Lio/flutter/view/d$h;)I

    move-result v1

    sget-object v2, Lio/flutter/view/d$g;->f:Lio/flutter/view/d$g;

    iget v2, v2, Lio/flutter/view/d$g;->e:I

    if-ne v1, v2, :cond_d

    iput-object v0, p0, Lio/flutter/view/d$l;->V:Lio/flutter/view/d$h;

    goto :goto_b

    :cond_d
    invoke-static {v0}, Lio/flutter/view/d$h;->i(Lio/flutter/view/d$h;)I

    move-result v1

    sget-object v2, Lio/flutter/view/d$g;->g:Lio/flutter/view/d$g;

    iget v2, v2, Lio/flutter/view/d$g;->e:I

    if-ne v1, v2, :cond_e

    iput-object v0, p0, Lio/flutter/view/d$l;->W:Lio/flutter/view/d$h;

    goto :goto_b

    :cond_e
    iget-object v1, p0, Lio/flutter/view/d$l;->U:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    iget-object v1, p0, Lio/flutter/view/d$l;->U:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_f
    :goto_c
    return-void
.end method

.method public final g0(Ljava/util/List;)V
    .locals 2

    sget-object v0, Lio/flutter/view/d$i;->q:Lio/flutter/view/d$i;

    invoke-virtual {p0, v0}, Lio/flutter/view/d$l;->x0(Lio/flutter/view/d$i;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lio/flutter/view/d$l;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/d$l;

    invoke-virtual {v1, p1}, Lio/flutter/view/d$l;->g0(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h0(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/view/d$n;

    sget-object v1, Lio/flutter/view/d$e;->a:[I

    iget-object v2, p2, Lio/flutter/view/d$n;->c:Lio/flutter/view/d$o;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p2

    check-cast v1, Lio/flutter/view/d$j;

    iget-object v1, v1, Lio/flutter/view/d$j;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Landroid/text/style/LocaleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    iget v1, p2, Lio/flutter/view/d$n;->a:I

    iget p2, p2, Lio/flutter/view/d$n;->b:I

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/text/style/TtsSpan$Builder;

    const-string v2, "android.type.verbatim"

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    iget v2, p2, Lio/flutter/view/d$n;->a:I

    iget p2, p2, Lio/flutter/view/d$n;->b:I

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final i0()Z
    .locals 3

    iget-object v0, p0, Lio/flutter/view/d$l;->p:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lio/flutter/view/d$l;->L:Ljava/lang/String;

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lio/flutter/view/d$l;->L:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final j0()Z
    .locals 2

    iget v0, p0, Lio/flutter/view/d$l;->l:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lio/flutter/view/d$l;->H:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lio/flutter/view/d$l;->H:F

    iget v1, p0, Lio/flutter/view/d$l;->l:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k0()V
    .locals 3

    iget-boolean v0, p0, Lio/flutter/view/d$l;->X:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/view/d$l;->X:Z

    iget-object v1, p0, Lio/flutter/view/d$l;->Y:[F

    if-nez v1, :cond_1

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lio/flutter/view/d$l;->Y:[F

    :cond_1
    iget-object v1, p0, Lio/flutter/view/d$l;->Y:[F

    iget-object v2, p0, Lio/flutter/view/d$l;->Q:[F

    invoke-static {v1, v0, v2, v0}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/flutter/view/d$l;->Y:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    :cond_2
    return-void
.end method

.method public final l0(Lg3/d;)Lio/flutter/view/d$l;
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d$l;->R:Lio/flutter/view/d$l;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lg3/d;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lio/flutter/view/d$l;->R:Lio/flutter/view/d$l;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final m0()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/d$l;->b0:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final n0()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d$l;->x:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/view/d$l;->y:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lio/flutter/view/d$l;->h0(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method public final o0()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d$l;->p:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/view/d$l;->q:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lio/flutter/view/d$l;->h0(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method public final p0()Ljava/lang/String;
    .locals 3

    sget-object v0, Lio/flutter/view/d$i;->r:Lio/flutter/view/d$i;

    invoke-virtual {p0, v0}, Lio/flutter/view/d$l;->x0(Lio/flutter/view/d$i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/d$l;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/d$l;->p:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/flutter/view/d$l;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/d$l;

    invoke-virtual {v1}, Lio/flutter/view/d$l;->p0()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q0(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {}, Lio/flutter/view/d$o;->values()[Lio/flutter/view/d$o;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aget-object v6, v6, v7

    sget-object v7, Lio/flutter/view/d$e;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aget-object v7, p2, v7

    new-instance v8, Lio/flutter/view/d$j;

    invoke-direct {v8, v2}, Lio/flutter/view/d$j;-><init>(Lio/flutter/view/d$a;)V

    iput v4, v8, Lio/flutter/view/d$n;->a:I

    iput v5, v8, Lio/flutter/view/d$n;->b:I

    iput-object v6, v8, Lio/flutter/view/d$n;->c:Lio/flutter/view/d$o;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lio/flutter/view/d$j;->d:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    new-instance v7, Lio/flutter/view/d$m;

    invoke-direct {v7, v2}, Lio/flutter/view/d$m;-><init>(Lio/flutter/view/d$a;)V

    iput v4, v7, Lio/flutter/view/d$n;->a:I

    iput v5, v7, Lio/flutter/view/d$n;->b:I

    iput-object v6, v7, Lio/flutter/view/d$n;->c:Lio/flutter/view/d$o;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final r0()Ljava/lang/CharSequence;
    .locals 8

    invoke-virtual {p0}, Lio/flutter/view/d$l;->o0()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/view/d$l;->n0()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v6, v3, v5

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v1, v7, v4

    const-string v1, ", "

    aput-object v1, v7, v0

    aput-object v6, v7, v2

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v1, v6

    :cond_2
    :goto_2
    add-int/2addr v5, v0

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final s0()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d$l;->r:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/view/d$l;->s:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lio/flutter/view/d$l;->h0(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method public final t0()Ljava/lang/CharSequence;
    .locals 9

    invoke-virtual {p0}, Lio/flutter/view/d$l;->s0()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/view/d$l;->o0()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lio/flutter/view/d$l;->n0()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const/4 v2, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    aget-object v7, v4, v6

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    new-array v8, v3, [Ljava/lang/CharSequence;

    aput-object v2, v8, v5

    const-string v2, ", "

    aput-object v2, v8, v0

    aput-object v7, v8, v1

    invoke-static {v8}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_2

    :cond_1
    :goto_1
    move-object v2, v7

    :cond_2
    :goto_2
    add-int/2addr v6, v0

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public final u0(Lio/flutter/view/d$g;)Z
    .locals 1

    iget v0, p0, Lio/flutter/view/d$l;->E:I

    iget p1, p1, Lio/flutter/view/d$g;->e:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final v0(Lio/flutter/view/d$i;)Z
    .locals 1

    iget v0, p0, Lio/flutter/view/d$l;->D:I

    iget p1, p1, Lio/flutter/view/d$i;->e:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final w0(Lio/flutter/view/d$g;)Z
    .locals 1

    iget v0, p0, Lio/flutter/view/d$l;->d:I

    iget p1, p1, Lio/flutter/view/d$g;->e:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final x0(Lio/flutter/view/d$i;)Z
    .locals 1

    iget v0, p0, Lio/flutter/view/d$l;->c:I

    iget p1, p1, Lio/flutter/view/d$i;->e:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final y0([FZ)Lio/flutter/view/d$l;
    .locals 12

    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v2, p1, v1

    div-float/2addr v2, v0

    const/4 v3, 0x1

    aget v4, p1, v3

    div-float/2addr v4, v0

    iget v0, p0, Lio/flutter/view/d$l;->M:F

    cmpg-float v0, v2, v0

    const/4 v5, 0x0

    if-ltz v0, :cond_6

    iget v0, p0, Lio/flutter/view/d$l;->O:F

    cmpl-float v0, v2, v0

    if-gez v0, :cond_6

    iget v0, p0, Lio/flutter/view/d$l;->N:F

    cmpg-float v0, v4, v0

    if-ltz v0, :cond_6

    iget v0, p0, Lio/flutter/view/d$l;->P:F

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [F

    iget-object v2, p0, Lio/flutter/view/d$l;->T:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/flutter/view/d$l;

    sget-object v6, Lio/flutter/view/d$i;->s:Lio/flutter/view/d$i;

    invoke-virtual {v4, v6}, Lio/flutter/view/d$l;->x0(Lio/flutter/view/d$i;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lio/flutter/view/d$l;->k0()V

    iget-object v8, v4, Lio/flutter/view/d$l;->Y:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    move-object v6, v0

    move-object v10, p1

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    invoke-virtual {v4, v0, p2}, Lio/flutter/view/d$l;->y0([FZ)Lio/flutter/view/d$l;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    :cond_3
    if-eqz p2, :cond_4

    iget p1, p0, Lio/flutter/view/d$l;->i:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {p0}, Lio/flutter/view/d$l;->z0()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    move-object v5, p0

    :cond_6
    :goto_1
    return-object v5
.end method

.method public final z0()Z
    .locals 4

    sget-object v0, Lio/flutter/view/d$i;->q:Lio/flutter/view/d$i;

    invoke-virtual {p0, v0}, Lio/flutter/view/d$l;->x0(Lio/flutter/view/d$i;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lio/flutter/view/d$i;->A:Lio/flutter/view/d$i;

    invoke-virtual {p0, v0}, Lio/flutter/view/d$l;->x0(Lio/flutter/view/d$i;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lio/flutter/view/d$l;->d:I

    invoke-static {}, Lio/flutter/view/d;->o()I

    move-result v3

    not-int v3, v3

    and-int/2addr v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lio/flutter/view/d$l;->c:I

    invoke-static {}, Lio/flutter/view/d;->p()I

    move-result v3

    and-int/2addr v0, v3

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/flutter/view/d$l;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lio/flutter/view/d$l;->r:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lio/flutter/view/d$l;->x:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method
