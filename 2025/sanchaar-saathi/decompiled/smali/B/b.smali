.class public LB/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB/b$a;,
        LB/b$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:LB/b$a;

.field public c:LA/f;


# direct methods
.method public constructor <init>(LA/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LB/b;->a:Ljava/util/ArrayList;

    new-instance v0, LB/b$a;

    invoke-direct {v0}, LB/b$a;-><init>()V

    iput-object v0, p0, LB/b;->b:LB/b$a;

    iput-object p1, p0, LB/b;->c:LA/f;

    return-void
.end method


# virtual methods
.method public final a(LB/b$b;LA/e;Z)Z
    .locals 5

    iget-object v0, p0, LB/b;->b:LB/b$a;

    invoke-virtual {p2}, LA/e;->w()LA/e$b;

    move-result-object v1

    iput-object v1, v0, LB/b$a;->a:LA/e$b;

    iget-object v0, p0, LB/b;->b:LB/b$a;

    invoke-virtual {p2}, LA/e;->K()LA/e$b;

    move-result-object v1

    iput-object v1, v0, LB/b$a;->b:LA/e$b;

    iget-object v0, p0, LB/b;->b:LB/b$a;

    invoke-virtual {p2}, LA/e;->N()I

    move-result v1

    iput v1, v0, LB/b$a;->c:I

    iget-object v0, p0, LB/b;->b:LB/b$a;

    invoke-virtual {p2}, LA/e;->t()I

    move-result v1

    iput v1, v0, LB/b$a;->d:I

    iget-object v0, p0, LB/b;->b:LB/b$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, LB/b$a;->i:Z

    iput-boolean p3, v0, LB/b$a;->j:Z

    iget-object p3, v0, LB/b$a;->a:LA/e$b;

    sget-object v2, LA/e$b;->g:LA/e$b;

    const/4 v3, 0x1

    if-ne p3, v2, :cond_0

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iget-object v4, v0, LB/b$a;->b:LA/e$b;

    if-ne v4, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/4 v4, 0x0

    if-eqz p3, :cond_2

    iget p3, p2, LA/e;->Q:F

    cmpl-float p3, p3, v4

    if-lez p3, :cond_2

    move p3, v3

    goto :goto_2

    :cond_2
    move p3, v1

    :goto_2
    if-eqz v2, :cond_3

    iget v2, p2, LA/e;->Q:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    const/4 v4, 0x4

    if-eqz p3, :cond_4

    iget-object p3, p2, LA/e;->n:[I

    aget p3, p3, v1

    if-ne p3, v4, :cond_4

    sget-object p3, LA/e$b;->e:LA/e$b;

    iput-object p3, v0, LB/b$a;->a:LA/e$b;

    :cond_4
    if-eqz v2, :cond_5

    iget-object p3, p2, LA/e;->n:[I

    aget p3, p3, v3

    if-ne p3, v4, :cond_5

    sget-object p3, LA/e$b;->e:LA/e$b;

    iput-object p3, v0, LB/b$a;->b:LA/e$b;

    :cond_5
    invoke-interface {p1, p2, v0}, LB/b$b;->b(LA/e;LB/b$a;)V

    iget-object p1, p0, LB/b;->b:LB/b$a;

    iget p1, p1, LB/b$a;->e:I

    invoke-virtual {p2, p1}, LA/e;->A0(I)V

    iget-object p1, p0, LB/b;->b:LB/b$a;

    iget p1, p1, LB/b$a;->f:I

    invoke-virtual {p2, p1}, LA/e;->e0(I)V

    iget-object p1, p0, LB/b;->b:LB/b$a;

    iget-boolean p1, p1, LB/b$a;->h:Z

    invoke-virtual {p2, p1}, LA/e;->d0(Z)V

    iget-object p1, p0, LB/b;->b:LB/b$a;

    iget p1, p1, LB/b$a;->g:I

    invoke-virtual {p2, p1}, LA/e;->Y(I)V

    iget-object p1, p0, LB/b;->b:LB/b$a;

    iput-boolean v1, p1, LB/b$a;->j:Z

    iget-boolean p1, p1, LB/b$a;->i:Z

    return p1
.end method

.method public final b(LA/f;)V
    .locals 9

    iget-object v0, p1, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, LA/f;->Q0()LB/b$b;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p1, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LA/e;

    instance-of v5, v4, LA/g;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v4, LA/e;->e:LB/j;

    iget-object v5, v5, LB/m;->e:LB/g;

    iget-boolean v5, v5, LB/f;->j:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, LA/e;->f:LB/l;

    iget-object v5, v5, LB/m;->e:LB/g;

    iget-boolean v5, v5, LB/f;->j:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v2}, LA/e;->q(I)LA/e$b;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, LA/e;->q(I)LA/e$b;

    move-result-object v7

    sget-object v8, LA/e$b;->g:LA/e$b;

    if-ne v5, v8, :cond_2

    iget v5, v4, LA/e;->l:I

    if-eq v5, v6, :cond_2

    if-ne v7, v8, :cond_2

    iget v5, v4, LA/e;->m:I

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v4, v2}, LB/b;->a(LB/b$b;LA/e;Z)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v1}, LB/b$b;->a()V

    return-void
.end method

.method public final c(LA/f;Ljava/lang/String;II)V
    .locals 2

    invoke-virtual {p1}, LA/e;->C()I

    move-result p2

    invoke-virtual {p1}, LA/e;->B()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LA/e;->q0(I)V

    invoke-virtual {p1, v1}, LA/e;->p0(I)V

    invoke-virtual {p1, p3}, LA/e;->A0(I)V

    invoke-virtual {p1, p4}, LA/e;->e0(I)V

    invoke-virtual {p1, p2}, LA/e;->q0(I)V

    invoke-virtual {p1, v0}, LA/e;->p0(I)V

    iget-object p1, p0, LB/b;->c:LA/f;

    invoke-virtual {p1}, LA/f;->G0()V

    return-void
.end method

.method public d(LA/f;IIIIIIIII)J
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual/range {p1 .. p1}, LA/f;->Q0()LB/b$b;

    move-result-object v5

    iget-object v6, v1, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, LA/e;->N()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, LA/e;->t()I

    move-result v8

    const/16 v9, 0x80

    invoke-static {v2, v9}, LA/j;->b(II)Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_1

    const/16 v12, 0x40

    invoke-static {v2, v12}, LA/j;->b(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v10

    :goto_1
    if-eqz v2, :cond_9

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v6, :cond_9

    iget-object v13, v1, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LA/e;

    invoke-virtual {v13}, LA/e;->w()LA/e$b;

    move-result-object v14

    sget-object v15, LA/e$b;->g:LA/e$b;

    if-ne v14, v15, :cond_2

    move v14, v10

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v13}, LA/e;->K()LA/e$b;

    move-result-object v11

    if-ne v11, v15, :cond_3

    move v11, v10

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_4
    if-eqz v14, :cond_4

    if-eqz v11, :cond_4

    invoke-virtual {v13}, LA/e;->r()F

    move-result v11

    const/4 v14, 0x0

    cmpl-float v11, v11, v14

    if-lez v11, :cond_4

    move v11, v10

    goto :goto_5

    :cond_4
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v13}, LA/e;->T()Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v11, :cond_6

    :cond_5
    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_6
    invoke-virtual {v13}, LA/e;->V()Z

    move-result v14

    if-eqz v14, :cond_7

    if-eqz v11, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v13}, LA/e;->T()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v13}, LA/e;->V()Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_6

    :cond_8
    add-int/2addr v12, v10

    goto :goto_2

    :cond_9
    :goto_7
    if-eqz v2, :cond_a

    sget v11, Lz/d;->q:I

    :cond_a
    const/high16 v11, 0x40000000    # 2.0f

    if-ne v3, v11, :cond_b

    if-eq v4, v11, :cond_c

    :cond_b
    if-eqz v9, :cond_d

    :cond_c
    move v12, v10

    goto :goto_8

    :cond_d
    const/4 v12, 0x0

    :goto_8
    and-int/2addr v2, v12

    const/4 v12, 0x2

    if-eqz v2, :cond_15

    invoke-virtual/range {p1 .. p1}, LA/e;->A()I

    move-result v2

    move/from16 v13, p6

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, LA/e;->z()I

    move-result v13

    move/from16 v14, p8

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ne v3, v11, :cond_e

    invoke-virtual/range {p1 .. p1}, LA/e;->N()I

    move-result v14

    if-eq v14, v2, :cond_e

    invoke-virtual {v1, v2}, LA/e;->A0(I)V

    invoke-virtual/range {p1 .. p1}, LA/f;->S0()V

    :cond_e
    if-ne v4, v11, :cond_f

    invoke-virtual/range {p1 .. p1}, LA/e;->t()I

    move-result v2

    if-eq v2, v13, :cond_f

    invoke-virtual {v1, v13}, LA/e;->e0(I)V

    invoke-virtual/range {p1 .. p1}, LA/f;->S0()V

    :cond_f
    if-ne v3, v11, :cond_10

    if-ne v4, v11, :cond_10

    invoke-virtual {v1, v9}, LA/f;->N0(Z)Z

    move-result v2

    move v14, v12

    const/4 v13, 0x0

    goto :goto_a

    :cond_10
    invoke-virtual {v1, v9}, LA/f;->O0(Z)Z

    move-result v2

    const/4 v13, 0x0

    if-ne v3, v11, :cond_11

    invoke-virtual {v1, v9, v13}, LA/f;->P0(ZI)Z

    move-result v14

    and-int/2addr v2, v14

    move v14, v10

    goto :goto_9

    :cond_11
    move v14, v13

    :goto_9
    if-ne v4, v11, :cond_12

    invoke-virtual {v1, v9, v10}, LA/f;->P0(ZI)Z

    move-result v9

    and-int/2addr v2, v9

    add-int/2addr v14, v10

    :cond_12
    :goto_a
    if-eqz v2, :cond_16

    if-ne v3, v11, :cond_13

    move v3, v10

    goto :goto_b

    :cond_13
    move v3, v13

    :goto_b
    if-ne v4, v11, :cond_14

    move v4, v10

    goto :goto_c

    :cond_14
    move v4, v13

    :goto_c
    invoke-virtual {v1, v3, v4}, LA/f;->E0(ZZ)V

    goto :goto_d

    :cond_15
    const/4 v13, 0x0

    move v2, v13

    move v14, v2

    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    if-eq v14, v12, :cond_2d

    :cond_17
    if-lez v6, :cond_18

    invoke-virtual/range {p0 .. p1}, LB/b;->b(LA/f;)V

    :cond_18
    invoke-virtual/range {p1 .. p1}, LA/f;->R0()I

    move-result v2

    iget-object v3, v0, LB/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v6, :cond_19

    const-string v4, "First pass"

    invoke-virtual {v0, v1, v4, v7, v8}, LB/b;->c(LA/f;Ljava/lang/String;II)V

    :cond_19
    if-lez v3, :cond_2c

    invoke-virtual/range {p1 .. p1}, LA/e;->w()LA/e$b;

    move-result-object v4

    sget-object v6, LA/e$b;->f:LA/e$b;

    if-ne v4, v6, :cond_1a

    move v4, v10

    goto :goto_e

    :cond_1a
    move v4, v13

    :goto_e
    invoke-virtual/range {p1 .. p1}, LA/e;->K()LA/e$b;

    move-result-object v9

    if-ne v9, v6, :cond_1b

    move v6, v10

    goto :goto_f

    :cond_1b
    move v6, v13

    :goto_f
    invoke-virtual/range {p1 .. p1}, LA/e;->N()I

    move-result v9

    iget-object v11, v0, LB/b;->c:LA/f;

    invoke-virtual {v11}, LA/e;->C()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, LA/e;->t()I

    move-result v11

    iget-object v14, v0, LB/b;->c:LA/f;

    invoke-virtual {v14}, LA/e;->B()I

    move-result v14

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v14, v13

    :goto_10
    if-ge v14, v3, :cond_1c

    iget-object v15, v0, LB/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LA/e;

    add-int/2addr v14, v10

    goto :goto_10

    :cond_1c
    move v14, v13

    move v15, v14

    :goto_11
    if-ge v14, v12, :cond_28

    move v12, v13

    :goto_12
    if-ge v12, v3, :cond_26

    iget-object v13, v0, LB/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LA/e;

    instance-of v10, v13, LA/h;

    if-eqz v10, :cond_1d

    :goto_13
    move/from16 p5, v3

    goto :goto_14

    :cond_1d
    instance-of v10, v13, LA/g;

    if-eqz v10, :cond_1e

    goto :goto_13

    :cond_1e
    invoke-virtual {v13}, LA/e;->M()I

    move-result v10

    move/from16 p5, v3

    const/16 v3, 0x8

    if-ne v10, v3, :cond_1f

    goto :goto_14

    :cond_1f
    iget-object v3, v13, LA/e;->e:LB/j;

    iget-object v3, v3, LB/m;->e:LB/g;

    iget-boolean v3, v3, LB/f;->j:Z

    if-eqz v3, :cond_20

    iget-object v3, v13, LA/e;->f:LB/l;

    iget-object v3, v3, LB/m;->e:LB/g;

    iget-boolean v3, v3, LB/f;->j:Z

    if-eqz v3, :cond_20

    :goto_14
    move/from16 p6, v2

    move-object/from16 p9, v5

    move/from16 p7, v14

    :goto_15
    const/4 v2, 0x1

    goto/16 :goto_16

    :cond_20
    invoke-virtual {v13}, LA/e;->N()I

    move-result v3

    invoke-virtual {v13}, LA/e;->t()I

    move-result v10

    move/from16 p6, v2

    invoke-virtual {v13}, LA/e;->l()I

    move-result v2

    move/from16 p7, v14

    const/4 v14, 0x1

    invoke-virtual {v0, v5, v13, v14}, LB/b;->a(LB/b$b;LA/e;Z)Z

    move-result v16

    or-int v14, v15, v16

    invoke-virtual {v13}, LA/e;->N()I

    move-result v15

    move-object/from16 p9, v5

    invoke-virtual {v13}, LA/e;->t()I

    move-result v5

    if-eq v15, v3, :cond_22

    invoke-virtual {v13, v15}, LA/e;->A0(I)V

    if-eqz v4, :cond_21

    invoke-virtual {v13}, LA/e;->G()I

    move-result v3

    if-le v3, v9, :cond_21

    invoke-virtual {v13}, LA/e;->G()I

    move-result v3

    sget-object v14, LA/d$b;->h:LA/d$b;

    invoke-virtual {v13, v14}, LA/e;->k(LA/d$b;)LA/d;

    move-result-object v14

    invoke-virtual {v14}, LA/d;->b()I

    move-result v14

    add-int/2addr v3, v14

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_21
    const/4 v14, 0x1

    :cond_22
    if-eq v5, v10, :cond_24

    invoke-virtual {v13, v5}, LA/e;->e0(I)V

    if-eqz v6, :cond_23

    invoke-virtual {v13}, LA/e;->n()I

    move-result v3

    if-le v3, v11, :cond_23

    invoke-virtual {v13}, LA/e;->n()I

    move-result v3

    sget-object v5, LA/d$b;->i:LA/d$b;

    invoke-virtual {v13, v5}, LA/e;->k(LA/d$b;)LA/d;

    move-result-object v5

    invoke-virtual {v5}, LA/d;->b()I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_23
    const/4 v14, 0x1

    :cond_24
    invoke-virtual {v13}, LA/e;->Q()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v13}, LA/e;->l()I

    move-result v3

    if-eq v2, v3, :cond_25

    const/4 v2, 0x1

    const/4 v15, 0x1

    goto :goto_16

    :cond_25
    move v15, v14

    goto :goto_15

    :goto_16
    add-int/2addr v12, v2

    move/from16 v3, p5

    move/from16 v14, p7

    move-object/from16 v5, p9

    move v10, v2

    const/4 v13, 0x0

    move/from16 v2, p6

    goto/16 :goto_12

    :cond_26
    move/from16 p6, v2

    move/from16 p5, v3

    move-object/from16 p9, v5

    move v2, v10

    move/from16 p7, v14

    if-eqz v15, :cond_27

    const-string v3, "intermediate pass"

    invoke-virtual {v0, v1, v3, v7, v8}, LB/b;->c(LA/f;Ljava/lang/String;II)V

    const/4 v15, 0x0

    :cond_27
    add-int/lit8 v14, p7, 0x1

    move/from16 v3, p5

    move-object/from16 v5, p9

    move v10, v2

    const/4 v12, 0x2

    const/4 v13, 0x0

    move/from16 v2, p6

    goto/16 :goto_11

    :cond_28
    move/from16 p6, v2

    move v2, v10

    if-eqz v15, :cond_2b

    const-string v3, "2nd pass"

    invoke-virtual {v0, v1, v3, v7, v8}, LB/b;->c(LA/f;Ljava/lang/String;II)V

    invoke-virtual/range {p1 .. p1}, LA/e;->N()I

    move-result v3

    if-ge v3, v9, :cond_29

    invoke-virtual {v1, v9}, LA/e;->A0(I)V

    move v3, v2

    goto :goto_17

    :cond_29
    const/4 v3, 0x0

    :goto_17
    invoke-virtual/range {p1 .. p1}, LA/e;->t()I

    move-result v4

    if-ge v4, v11, :cond_2a

    invoke-virtual {v1, v11}, LA/e;->e0(I)V

    move v10, v2

    goto :goto_18

    :cond_2a
    move v10, v3

    :goto_18
    if-eqz v10, :cond_2b

    const-string v2, "3rd pass"

    invoke-virtual {v0, v1, v2, v7, v8}, LB/b;->c(LA/f;Ljava/lang/String;II)V

    :cond_2b
    move/from16 v2, p6

    :cond_2c
    invoke-virtual {v1, v2}, LA/f;->b1(I)V

    :cond_2d
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public e(LA/f;)V
    .locals 6

    iget-object v0, p0, LB/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p1, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA/e;

    invoke-virtual {v2}, LA/e;->w()LA/e$b;

    move-result-object v3

    sget-object v4, LA/e$b;->g:LA/e$b;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, LA/e;->w()LA/e$b;

    move-result-object v3

    sget-object v5, LA/e$b;->h:LA/e$b;

    if-eq v3, v5, :cond_0

    invoke-virtual {v2}, LA/e;->K()LA/e$b;

    move-result-object v3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, LA/e;->K()LA/e$b;

    move-result-object v3

    if-ne v3, v5, :cond_1

    :cond_0
    iget-object v3, p0, LB/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LA/f;->S0()V

    return-void
.end method
