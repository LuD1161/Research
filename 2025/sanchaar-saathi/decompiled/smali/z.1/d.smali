.class public Lz/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz/d$a;,
        Lz/d$b;
    }
.end annotation


# static fields
.field public static q:I = 0x3e8

.field public static r:Z = true

.field public static s:J

.field public static t:J


# instance fields
.field public a:I

.field public b:Ljava/util/HashMap;

.field public c:Lz/d$a;

.field public d:I

.field public e:I

.field public f:[Lz/b;

.field public g:Z

.field public h:Z

.field public i:[Z

.field public j:I

.field public k:I

.field public l:I

.field public final m:Lz/c;

.field public n:[Lz/i;

.field public o:I

.field public p:Lz/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz/d;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lz/d;->b:Ljava/util/HashMap;

    const/16 v2, 0x20

    iput v2, p0, Lz/d;->d:I

    iput v2, p0, Lz/d;->e:I

    iput-object v1, p0, Lz/d;->f:[Lz/b;

    iput-boolean v0, p0, Lz/d;->g:Z

    iput-boolean v0, p0, Lz/d;->h:Z

    new-array v1, v2, [Z

    iput-object v1, p0, Lz/d;->i:[Z

    const/4 v1, 0x1

    iput v1, p0, Lz/d;->j:I

    iput v0, p0, Lz/d;->k:I

    iput v2, p0, Lz/d;->l:I

    sget v1, Lz/d;->q:I

    new-array v1, v1, [Lz/i;

    iput-object v1, p0, Lz/d;->n:[Lz/i;

    iput v0, p0, Lz/d;->o:I

    new-array v0, v2, [Lz/b;

    iput-object v0, p0, Lz/d;->f:[Lz/b;

    invoke-virtual {p0}, Lz/d;->C()V

    new-instance v0, Lz/c;

    invoke-direct {v0}, Lz/c;-><init>()V

    iput-object v0, p0, Lz/d;->m:Lz/c;

    new-instance v1, Lz/h;

    invoke-direct {v1, v0}, Lz/h;-><init>(Lz/c;)V

    iput-object v1, p0, Lz/d;->c:Lz/d$a;

    sget-boolean v1, Lz/d;->r:Z

    if-eqz v1, :cond_0

    new-instance v1, Lz/d$b;

    invoke-direct {v1, p0, v0}, Lz/d$b;-><init>(Lz/d;Lz/c;)V

    iput-object v1, p0, Lz/d;->p:Lz/d$a;

    goto :goto_0

    :cond_0
    new-instance v1, Lz/b;

    invoke-direct {v1, v0}, Lz/b;-><init>(Lz/c;)V

    iput-object v1, p0, Lz/d;->p:Lz/d$a;

    :goto_0
    return-void
.end method

.method public static s(Lz/d;Lz/i;Lz/i;F)Lz/b;
    .locals 0

    invoke-virtual {p0}, Lz/d;->r()Lz/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lz/b;->j(Lz/i;Lz/i;F)Lz/b;

    move-result-object p0

    return-object p0
.end method

.method public static w()Lz/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public A(Lz/d$a;)V
    .locals 1

    invoke-virtual {p0, p1}, Lz/d;->u(Lz/d$a;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz/d;->B(Lz/d$a;Z)I

    invoke-virtual {p0}, Lz/d;->n()V

    return-void
.end method

.method public final B(Lz/d$a;Z)I
    .locals 10

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    iget v1, p0, Lz/d;->j:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lz/d;->i:[Z

    aput-boolean p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    move v1, v0

    :cond_1
    :goto_1
    if-nez v0, :cond_b

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lz/d;->j:I

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Lz/d$a;->getKey()Lz/i;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lz/d;->i:[Z

    invoke-interface {p1}, Lz/d$a;->getKey()Lz/i;

    move-result-object v4

    iget v4, v4, Lz/i;->c:I

    aput-boolean v3, v2, v4

    :cond_3
    iget-object v2, p0, Lz/d;->i:[Z

    invoke-interface {p1, p0, v2}, Lz/d$a;->a(Lz/d;[Z)Lz/i;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v4, p0, Lz/d;->i:[Z

    iget v5, v2, Lz/i;->c:I

    aget-boolean v6, v4, v5

    if-eqz v6, :cond_4

    return v1

    :cond_4
    aput-boolean v3, v4, v5

    :cond_5
    if-eqz v2, :cond_a

    const/4 v3, -0x1

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move v5, p2

    move v6, v3

    :goto_2
    iget v7, p0, Lz/d;->k:I

    if-ge v5, v7, :cond_9

    iget-object v7, p0, Lz/d;->f:[Lz/b;

    aget-object v7, v7, v5

    iget-object v8, v7, Lz/b;->a:Lz/i;

    iget-object v8, v8, Lz/i;->j:Lz/i$a;

    sget-object v9, Lz/i$a;->e:Lz/i$a;

    if-ne v8, v9, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v8, v7, Lz/b;->f:Z

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v7, v2}, Lz/b;->t(Lz/i;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v7, Lz/b;->e:Lz/b$a;

    invoke-interface {v8, v2}, Lz/b$a;->j(Lz/i;)F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_8

    iget v7, v7, Lz/b;->b:F

    neg-float v7, v7

    div-float/2addr v7, v8

    cmpg-float v8, v7, v4

    if-gez v8, :cond_8

    move v6, v5

    move v4, v7

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    if-le v6, v3, :cond_1

    iget-object v4, p0, Lz/d;->f:[Lz/b;

    aget-object v4, v4, v6

    iget-object v5, v4, Lz/b;->a:Lz/i;

    iput v3, v5, Lz/i;->d:I

    invoke-virtual {v4, v2}, Lz/b;->y(Lz/i;)V

    iget-object v2, v4, Lz/b;->a:Lz/i;

    iput v6, v2, Lz/i;->d:I

    invoke-virtual {v2, v4}, Lz/i;->g(Lz/b;)V

    goto :goto_1

    :cond_a
    move v0, v3

    goto/16 :goto_1

    :cond_b
    return v1
.end method

.method public final C()V
    .locals 4

    sget-boolean v0, Lz/d;->r:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lz/d;->f:[Lz/b;

    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lz/d;->m:Lz/c;

    iget-object v3, v3, Lz/c;->a:Lz/f;

    invoke-interface {v3, v0}, Lz/f;->a(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lz/d;->f:[Lz/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lz/d;->f:[Lz/b;

    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lz/d;->m:Lz/c;

    iget-object v3, v3, Lz/c;->b:Lz/f;

    invoke-interface {v3, v0}, Lz/f;->a(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lz/d;->f:[Lz/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public D()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lz/d;->m:Lz/c;

    iget-object v3, v2, Lz/c;->d:[Lz/i;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lz/i;->d()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lz/c;->c:Lz/f;

    iget-object v2, p0, Lz/d;->n:[Lz/i;

    iget v3, p0, Lz/d;->o:I

    invoke-interface {v1, v2, v3}, Lz/f;->c([Ljava/lang/Object;I)V

    iput v0, p0, Lz/d;->o:I

    iget-object v1, p0, Lz/d;->m:Lz/c;

    iget-object v1, v1, Lz/c;->d:[Lz/i;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lz/d;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_2
    iput v0, p0, Lz/d;->a:I

    iget-object v1, p0, Lz/d;->c:Lz/d$a;

    invoke-interface {v1}, Lz/d$a;->clear()V

    const/4 v1, 0x1

    iput v1, p0, Lz/d;->j:I

    move v1, v0

    :goto_1
    iget v2, p0, Lz/d;->k:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lz/d;->f:[Lz/b;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Lz/b;->c:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lz/d;->C()V

    iput v0, p0, Lz/d;->k:I

    sget-boolean v0, Lz/d;->r:Z

    if-eqz v0, :cond_4

    new-instance v0, Lz/d$b;

    iget-object v1, p0, Lz/d;->m:Lz/c;

    invoke-direct {v0, p0, v1}, Lz/d$b;-><init>(Lz/d;Lz/c;)V

    iput-object v0, p0, Lz/d;->p:Lz/d$a;

    goto :goto_2

    :cond_4
    new-instance v0, Lz/b;

    iget-object v1, p0, Lz/d;->m:Lz/c;

    invoke-direct {v0, v1}, Lz/b;-><init>(Lz/c;)V

    iput-object v0, p0, Lz/d;->p:Lz/d$a;

    :goto_2
    return-void
.end method

.method public final a(Lz/i$a;Ljava/lang/String;)Lz/i;
    .locals 2

    iget-object v0, p0, Lz/d;->m:Lz/c;

    iget-object v0, v0, Lz/c;->c:Lz/f;

    invoke-interface {v0}, Lz/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/i;

    if-nez v0, :cond_0

    new-instance v0, Lz/i;

    invoke-direct {v0, p1, p2}, Lz/i;-><init>(Lz/i$a;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lz/i;->f(Lz/i$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lz/i;->d()V

    invoke-virtual {v0, p1, p2}, Lz/i;->f(Lz/i$a;Ljava/lang/String;)V

    :goto_0
    iget p1, p0, Lz/d;->o:I

    sget p2, Lz/d;->q:I

    if-lt p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x2

    sput p2, Lz/d;->q:I

    iget-object p1, p0, Lz/d;->n:[Lz/i;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lz/i;

    iput-object p1, p0, Lz/d;->n:[Lz/i;

    :cond_1
    iget-object p1, p0, Lz/d;->n:[Lz/i;

    iget p2, p0, Lz/d;->o:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lz/d;->o:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public b(LA/e;LA/e;FI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, LA/d$b;->f:LA/d$b;

    invoke-virtual {v1, v3}, LA/e;->k(LA/d$b;)LA/d;

    move-result-object v4

    invoke-virtual {v0, v4}, Lz/d;->q(Ljava/lang/Object;)Lz/i;

    move-result-object v6

    sget-object v4, LA/d$b;->g:LA/d$b;

    invoke-virtual {v1, v4}, LA/e;->k(LA/d$b;)LA/d;

    move-result-object v5

    invoke-virtual {v0, v5}, Lz/d;->q(Ljava/lang/Object;)Lz/i;

    move-result-object v8

    sget-object v5, LA/d$b;->h:LA/d$b;

    invoke-virtual {v1, v5}, LA/e;->k(LA/d$b;)LA/d;

    move-result-object v7

    invoke-virtual {v0, v7}, Lz/d;->q(Ljava/lang/Object;)Lz/i;

    move-result-object v13

    sget-object v7, LA/d$b;->i:LA/d$b;

    invoke-virtual {v1, v7}, LA/e;->k(LA/d$b;)LA/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz/d;->q(Ljava/lang/Object;)Lz/i;

    move-result-object v9

    invoke-virtual {v2, v3}, LA/e;->k(LA/d$b;)LA/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz/d;->q(Ljava/lang/Object;)Lz/i;

    move-result-object v1

    invoke-virtual {v2, v4}, LA/e;->k(LA/d$b;)LA/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Lz/d;->q(Ljava/lang/Object;)Lz/i;

    move-result-object v10

    invoke-virtual {v2, v5}, LA/e;->k(LA/d$b;)LA/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Lz/d;->q(Ljava/lang/Object;)Lz/i;

    move-result-object v3

    invoke-virtual {v2, v7}, LA/e;->k(LA/d$b;)LA/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz/d;->q(Ljava/lang/Object;)Lz/i;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lz/d;->r()Lz/b;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move/from16 v7, p4

    move-object/from16 p1, v3

    move-wide/from16 p2, v4

    int-to-double v3, v7

    mul-double/2addr v14, v3

    double-to-float v12, v14

    move-object v7, v2

    invoke-virtual/range {v7 .. v12}, Lz/b;->q(Lz/i;Lz/i;Lz/i;Lz/i;F)Lz/b;

    invoke-virtual {v0, v2}, Lz/d;->d(Lz/b;)V

    invoke-virtual/range {p0 .. p0}, Lz/d;->r()Lz/b;

    move-result-object v2

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    double-to-float v10, v7

    move-object v5, v2

    move-object v7, v13

    move-object v8, v1

    move-object/from16 v9, p1

    invoke-virtual/range {v5 .. v10}, Lz/b;->q(Lz/i;Lz/i;Lz/i;Lz/i;F)Lz/b;

    invoke-virtual {v0, v2}, Lz/d;->d(Lz/b;)V

    return-void
.end method

.method public c(Lz/i;Lz/i;IFLz/i;Lz/i;II)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p8

    invoke-virtual {p0}, Lz/d;->r()Lz/b;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lz/b;->h(Lz/i;Lz/i;IFLz/i;Lz/i;I)Lz/b;

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v10, p0, v1}, Lz/b;->d(Lz/d;I)Lz/b;

    :cond_0
    invoke-virtual {p0, v10}, Lz/d;->d(Lz/b;)V

    return-void
.end method

.method public d(Lz/b;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lz/d;->k:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lz/d;->l:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Lz/d;->j:I

    add-int/2addr v0, v1

    iget v2, p0, Lz/d;->e:I

    if-lt v0, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lz/d;->y()V

    :cond_2
    iget-boolean v0, p1, Lz/b;->f:Z

    const/4 v2, 0x0

    if-nez v0, :cond_9

    invoke-virtual {p1, p0}, Lz/b;->D(Lz/d;)V

    invoke-virtual {p1}, Lz/b;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lz/b;->r()V

    invoke-virtual {p1, p0}, Lz/b;->f(Lz/d;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lz/d;->p()Lz/i;

    move-result-object v0

    iput-object v0, p1, Lz/b;->a:Lz/i;

    invoke-virtual {p0, p1}, Lz/d;->l(Lz/b;)V

    iget-object v2, p0, Lz/d;->p:Lz/d$a;

    invoke-interface {v2, p1}, Lz/d$a;->b(Lz/d$a;)V

    iget-object v2, p0, Lz/d;->p:Lz/d$a;

    invoke-virtual {p0, v2, v1}, Lz/d;->B(Lz/d$a;Z)I

    iget v2, v0, Lz/i;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lz/b;->a:Lz/i;

    if-ne v2, v0, :cond_4

    invoke-virtual {p1, v0}, Lz/b;->w(Lz/i;)Lz/i;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lz/b;->y(Lz/i;)V

    :cond_4
    iget-boolean v0, p1, Lz/b;->f:Z

    if-nez v0, :cond_5

    iget-object v0, p1, Lz/b;->a:Lz/i;

    invoke-virtual {v0, p1}, Lz/i;->g(Lz/b;)V

    :cond_5
    iget v0, p0, Lz/d;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lz/d;->k:I

    goto :goto_0

    :cond_6
    move v1, v2

    :cond_7
    :goto_0
    invoke-virtual {p1}, Lz/b;->s()Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    move v2, v1

    :cond_9
    if-nez v2, :cond_a

    invoke-virtual {p0, p1}, Lz/d;->l(Lz/b;)V

    :cond_a
    return-void
.end method

.method public e(Lz/i;Lz/i;II)Lz/b;
    .locals 3

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    iget-boolean v1, p2, Lz/i;->g:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lz/i;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget p2, p2, Lz/i;->f:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Lz/i;->e(Lz/d;F)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lz/d;->r()Lz/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lz/b;->n(Lz/i;Lz/i;I)Lz/b;

    if-eq p4, v0, :cond_1

    invoke-virtual {v1, p0, p4}, Lz/b;->d(Lz/d;I)Lz/b;

    :cond_1
    invoke-virtual {p0, v1}, Lz/d;->d(Lz/b;)V

    return-object v1
.end method

.method public f(Lz/i;I)V
    .locals 2

    iget v0, p1, Lz/i;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Lz/i;->e(Lz/d;F)V

    return-void

    :cond_0
    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lz/d;->f:[Lz/b;

    aget-object v0, v1, v0

    iget-boolean v1, v0, Lz/b;->f:Z

    if-eqz v1, :cond_1

    int-to-float p1, p2

    iput p1, v0, Lz/b;->b:F

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lz/b;->e:Lz/b$a;

    invoke-interface {v1}, Lz/b$a;->e()I

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, v0, Lz/b;->f:Z

    int-to-float p1, p2

    iput p1, v0, Lz/b;->b:F

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lz/d;->r()Lz/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz/b;->m(Lz/i;I)Lz/b;

    invoke-virtual {p0, v0}, Lz/d;->d(Lz/b;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lz/d;->r()Lz/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz/b;->i(Lz/i;I)Lz/b;

    invoke-virtual {p0, v0}, Lz/d;->d(Lz/b;)V

    :goto_0
    return-void
.end method

.method public g(Lz/i;Lz/i;IZ)V
    .locals 2

    invoke-virtual {p0}, Lz/d;->r()Lz/b;

    move-result-object p4

    invoke-virtual {p0}, Lz/d;->t()Lz/i;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lz/i;->e:I

    invoke-virtual {p4, p1, p2, v0, p3}, Lz/b;->o(Lz/i;Lz/i;Lz/i;I)Lz/b;

    invoke-virtual {p0, p4}, Lz/d;->d(Lz/b;)V

    return-void
.end method

.method public h(Lz/i;Lz/i;II)V
    .locals 3

    invoke-virtual {p0}, Lz/d;->r()Lz/b;

    move-result-object v0

    invoke-virtual {p0}, Lz/d;->t()Lz/i;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lz/i;->e:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lz/b;->o(Lz/i;Lz/i;Lz/i;I)Lz/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lz/b;->e:Lz/b$a;

    invoke-interface {p1, v1}, Lz/b$a;->j(Lz/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p4}, Lz/d;->m(Lz/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Lz/d;->d(Lz/b;)V

    return-void
.end method

.method public i(Lz/i;Lz/i;IZ)V
    .locals 2

    invoke-virtual {p0}, Lz/d;->r()Lz/b;

    move-result-object p4

    invoke-virtual {p0}, Lz/d;->t()Lz/i;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lz/i;->e:I

    invoke-virtual {p4, p1, p2, v0, p3}, Lz/b;->p(Lz/i;Lz/i;Lz/i;I)Lz/b;

    invoke-virtual {p0, p4}, Lz/d;->d(Lz/b;)V

    return-void
.end method

.method public j(Lz/i;Lz/i;II)V
    .locals 3

    invoke-virtual {p0}, Lz/d;->r()Lz/b;

    move-result-object v0

    invoke-virtual {p0}, Lz/d;->t()Lz/i;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lz/i;->e:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lz/b;->p(Lz/i;Lz/i;Lz/i;I)Lz/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lz/b;->e:Lz/b$a;

    invoke-interface {p1, v1}, Lz/b$a;->j(Lz/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p4}, Lz/d;->m(Lz/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Lz/d;->d(Lz/b;)V

    return-void
.end method

.method public k(Lz/i;Lz/i;Lz/i;Lz/i;FI)V
    .locals 7

    invoke-virtual {p0}, Lz/d;->r()Lz/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lz/b;->k(Lz/i;Lz/i;Lz/i;Lz/i;F)Lz/b;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_0

    invoke-virtual {v6, p0, p6}, Lz/b;->d(Lz/d;I)Lz/b;

    :cond_0
    invoke-virtual {p0, v6}, Lz/d;->d(Lz/b;)V

    return-void
.end method

.method public final l(Lz/b;)V
    .locals 2

    sget-boolean v0, Lz/d;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz/d;->f:[Lz/b;

    iget v1, p0, Lz/d;->k:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lz/d;->m:Lz/c;

    iget-object v1, v1, Lz/c;->a:Lz/f;

    invoke-interface {v1, v0}, Lz/f;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz/d;->f:[Lz/b;

    iget v1, p0, Lz/d;->k:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lz/d;->m:Lz/c;

    iget-object v1, v1, Lz/c;->b:Lz/f;

    invoke-interface {v1, v0}, Lz/f;->a(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lz/d;->f:[Lz/b;

    iget v1, p0, Lz/d;->k:I

    aput-object p1, v0, v1

    iget-object v0, p1, Lz/b;->a:Lz/i;

    iput v1, v0, Lz/i;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lz/d;->k:I

    invoke-virtual {v0, p1}, Lz/i;->g(Lz/b;)V

    return-void
.end method

.method public m(Lz/b;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lz/d;->o(ILjava/lang/String;)Lz/i;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lz/b;->e(Lz/i;I)Lz/b;

    return-void
.end method

.method public final n()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lz/d;->k:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lz/d;->f:[Lz/b;

    aget-object v1, v1, v0

    iget-object v2, v1, Lz/b;->a:Lz/i;

    iget v1, v1, Lz/b;->b:F

    iput v1, v2, Lz/i;->f:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(ILjava/lang/String;)Lz/i;
    .locals 2

    iget v0, p0, Lz/d;->j:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lz/d;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lz/d;->y()V

    :cond_0
    sget-object v0, Lz/i$a;->h:Lz/i$a;

    invoke-virtual {p0, v0, p2}, Lz/d;->a(Lz/i$a;Ljava/lang/String;)Lz/i;

    move-result-object p2

    iget v0, p0, Lz/d;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/d;->a:I

    iget v1, p0, Lz/d;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lz/d;->j:I

    iput v0, p2, Lz/i;->c:I

    iput p1, p2, Lz/i;->e:I

    iget-object p1, p0, Lz/d;->m:Lz/c;

    iget-object p1, p1, Lz/c;->d:[Lz/i;

    aput-object p2, p1, v0

    iget-object p1, p0, Lz/d;->c:Lz/d$a;

    invoke-interface {p1, p2}, Lz/d$a;->c(Lz/i;)V

    return-object p2
.end method

.method public p()Lz/i;
    .locals 3

    iget v0, p0, Lz/d;->j:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lz/d;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lz/d;->y()V

    :cond_0
    sget-object v0, Lz/i$a;->g:Lz/i$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz/d;->a(Lz/i$a;Ljava/lang/String;)Lz/i;

    move-result-object v0

    iget v1, p0, Lz/d;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lz/d;->a:I

    iget v2, p0, Lz/d;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lz/d;->j:I

    iput v1, v0, Lz/i;->c:I

    iget-object v2, p0, Lz/d;->m:Lz/c;

    iget-object v2, v2, Lz/c;->d:[Lz/i;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public q(Ljava/lang/Object;)Lz/i;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lz/d;->j:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lz/d;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lz/d;->y()V

    :cond_1
    instance-of v1, p1, LA/d;

    if-eqz v1, :cond_5

    check-cast p1, LA/d;

    invoke-virtual {p1}, LA/d;->e()Lz/i;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lz/d;->m:Lz/c;

    invoke-virtual {p1, v0}, LA/d;->l(Lz/c;)V

    invoke-virtual {p1}, LA/d;->e()Lz/i;

    move-result-object p1

    move-object v0, p1

    :cond_2
    iget p1, v0, Lz/i;->c:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget v2, p0, Lz/d;->a:I

    if-gt p1, v2, :cond_3

    iget-object v2, p0, Lz/d;->m:Lz/c;

    iget-object v2, v2, Lz/c;->d:[Lz/i;

    aget-object v2, v2, p1

    if-nez v2, :cond_5

    :cond_3
    if-eq p1, v1, :cond_4

    invoke-virtual {v0}, Lz/i;->d()V

    :cond_4
    iget p1, p0, Lz/d;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz/d;->a:I

    iget v1, p0, Lz/d;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lz/d;->j:I

    iput p1, v0, Lz/i;->c:I

    sget-object v1, Lz/i$a;->e:Lz/i$a;

    iput-object v1, v0, Lz/i;->j:Lz/i$a;

    iget-object v1, p0, Lz/d;->m:Lz/c;

    iget-object v1, v1, Lz/c;->d:[Lz/i;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public r()Lz/b;
    .locals 5

    sget-boolean v0, Lz/d;->r:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz/d;->m:Lz/c;

    iget-object v0, v0, Lz/c;->a:Lz/f;

    invoke-interface {v0}, Lz/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/b;

    if-nez v0, :cond_0

    new-instance v0, Lz/d$b;

    iget-object v3, p0, Lz/d;->m:Lz/c;

    invoke-direct {v0, p0, v3}, Lz/d$b;-><init>(Lz/d;Lz/c;)V

    sget-wide v3, Lz/d;->t:J

    add-long/2addr v3, v1

    sput-wide v3, Lz/d;->t:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lz/b;->z()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz/d;->m:Lz/c;

    iget-object v0, v0, Lz/c;->b:Lz/f;

    invoke-interface {v0}, Lz/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/b;

    if-nez v0, :cond_2

    new-instance v0, Lz/b;

    iget-object v3, p0, Lz/d;->m:Lz/c;

    invoke-direct {v0, v3}, Lz/b;-><init>(Lz/c;)V

    sget-wide v3, Lz/d;->s:J

    add-long/2addr v3, v1

    sput-wide v3, Lz/d;->s:J

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lz/b;->z()V

    :goto_0
    invoke-static {}, Lz/i;->b()V

    return-object v0
.end method

.method public t()Lz/i;
    .locals 3

    iget v0, p0, Lz/d;->j:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lz/d;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lz/d;->y()V

    :cond_0
    sget-object v0, Lz/i$a;->g:Lz/i$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz/d;->a(Lz/i$a;Ljava/lang/String;)Lz/i;

    move-result-object v0

    iget v1, p0, Lz/d;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lz/d;->a:I

    iget v2, p0, Lz/d;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lz/d;->j:I

    iput v1, v0, Lz/i;->c:I

    iget-object v2, p0, Lz/d;->m:Lz/c;

    iget-object v2, v2, Lz/c;->d:[Lz/i;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public final u(Lz/d$a;)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lz/d;->k:I

    if-ge v2, v3, :cond_e

    iget-object v3, v0, Lz/d;->f:[Lz/b;

    aget-object v3, v3, v2

    iget-object v4, v3, Lz/b;->a:Lz/i;

    iget-object v4, v4, Lz/i;->j:Lz/i$a;

    sget-object v5, Lz/i$a;->e:Lz/i$a;

    if-ne v4, v5, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v3, v3, Lz/b;->b:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_1
    if-nez v2, :cond_c

    add-int/lit8 v3, v3, 0x1

    const/4 v5, -0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    move v8, v5

    move v9, v8

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_2
    iget v11, v0, Lz/d;->k:I

    const/4 v12, 0x1

    if-ge v7, v11, :cond_a

    iget-object v11, v0, Lz/d;->f:[Lz/b;

    aget-object v11, v11, v7

    iget-object v13, v11, Lz/b;->a:Lz/i;

    iget-object v13, v13, Lz/i;->j:Lz/i$a;

    sget-object v14, Lz/i$a;->e:Lz/i$a;

    if-ne v13, v14, :cond_2

    goto :goto_6

    :cond_2
    iget-boolean v13, v11, Lz/b;->f:Z

    if-eqz v13, :cond_3

    goto :goto_6

    :cond_3
    iget v13, v11, Lz/b;->b:F

    cmpg-float v13, v13, v4

    if-gez v13, :cond_9

    :goto_3
    iget v13, v0, Lz/d;->j:I

    if-ge v12, v13, :cond_9

    iget-object v13, v0, Lz/d;->m:Lz/c;

    iget-object v13, v13, Lz/c;->d:[Lz/i;

    aget-object v13, v13, v12

    iget-object v14, v11, Lz/b;->e:Lz/b$a;

    invoke-interface {v14, v13}, Lz/b$a;->j(Lz/i;)F

    move-result v14

    cmpg-float v15, v14, v4

    if-gtz v15, :cond_4

    goto :goto_5

    :cond_4
    const/4 v15, 0x0

    :goto_4
    const/16 v1, 0x9

    if-ge v15, v1, :cond_8

    iget-object v1, v13, Lz/i;->h:[F

    aget v1, v1, v15

    div-float/2addr v1, v14

    cmpg-float v16, v1, v6

    if-gez v16, :cond_5

    if-eq v15, v10, :cond_6

    :cond_5
    if-le v15, v10, :cond_7

    :cond_6
    move v6, v1

    move v8, v7

    move v9, v12

    move v10, v15

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    if-eq v8, v5, :cond_b

    iget-object v1, v0, Lz/d;->f:[Lz/b;

    aget-object v1, v1, v8

    iget-object v6, v1, Lz/b;->a:Lz/i;

    iput v5, v6, Lz/i;->d:I

    iget-object v5, v0, Lz/d;->m:Lz/c;

    iget-object v5, v5, Lz/c;->d:[Lz/i;

    aget-object v5, v5, v9

    invoke-virtual {v1, v5}, Lz/b;->y(Lz/i;)V

    iget-object v5, v1, Lz/b;->a:Lz/i;

    iput v8, v5, Lz/i;->d:I

    invoke-virtual {v5, v1}, Lz/i;->g(Lz/b;)V

    goto :goto_7

    :cond_b
    move v2, v12

    :goto_7
    iget v1, v0, Lz/d;->j:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_1

    move v2, v12

    goto/16 :goto_1

    :cond_c
    move v1, v3

    goto :goto_9

    :cond_d
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public v()Lz/c;
    .locals 1

    iget-object v0, p0, Lz/d;->m:Lz/c;

    return-object v0
.end method

.method public x(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LA/d;

    invoke-virtual {p1}, LA/d;->e()Lz/i;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lz/i;->f:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final y()V
    .locals 3

    iget v0, p0, Lz/d;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lz/d;->d:I

    iget-object v1, p0, Lz/d;->f:[Lz/b;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz/b;

    iput-object v0, p0, Lz/d;->f:[Lz/b;

    iget-object v0, p0, Lz/d;->m:Lz/c;

    iget-object v1, v0, Lz/c;->d:[Lz/i;

    iget v2, p0, Lz/d;->d:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lz/i;

    iput-object v1, v0, Lz/c;->d:[Lz/i;

    iget v0, p0, Lz/d;->d:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lz/d;->i:[Z

    iput v0, p0, Lz/d;->e:I

    iput v0, p0, Lz/d;->l:I

    return-void
.end method

.method public z()V
    .locals 2

    iget-boolean v0, p0, Lz/d;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lz/d;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz/d;->c:Lz/d$a;

    invoke-virtual {p0, v0}, Lz/d;->A(Lz/d$a;)V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lz/d;->k:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lz/d;->f:[Lz/b;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lz/b;->f:Z

    if-nez v1, :cond_2

    iget-object v0, p0, Lz/d;->c:Lz/d$a;

    invoke-virtual {p0, v0}, Lz/d;->A(Lz/d$a;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lz/d;->n()V

    :goto_2
    return-void
.end method
