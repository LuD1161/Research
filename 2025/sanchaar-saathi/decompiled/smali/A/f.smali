.class public LA/f;
.super LA/k;
.source "SourceFile"


# instance fields
.field public A0:Z

.field public B0:Lz/d;

.field public C0:I

.field public D0:I

.field public E0:I

.field public F0:I

.field public G0:I

.field public H0:I

.field public I0:[LA/c;

.field public J0:[LA/c;

.field public K0:Z

.field public L0:Z

.field public M0:Z

.field public N0:I

.field public O0:I

.field public P0:I

.field public Q0:Z

.field public R0:Z

.field public S0:Z

.field public T0:I

.field public x0:LB/b;

.field public y0:LB/e;

.field public z0:LB/b$b;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, LA/k;-><init>()V

    new-instance v0, LB/b;

    invoke-direct {v0, p0}, LB/b;-><init>(LA/f;)V

    iput-object v0, p0, LA/f;->x0:LB/b;

    new-instance v0, LB/e;

    invoke-direct {v0, p0}, LB/e;-><init>(LA/f;)V

    iput-object v0, p0, LA/f;->y0:LB/e;

    const/4 v0, 0x0

    iput-object v0, p0, LA/f;->z0:LB/b$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, LA/f;->A0:Z

    new-instance v1, Lz/d;

    invoke-direct {v1}, Lz/d;-><init>()V

    iput-object v1, p0, LA/f;->B0:Lz/d;

    iput v0, p0, LA/f;->G0:I

    iput v0, p0, LA/f;->H0:I

    const/4 v1, 0x4

    new-array v2, v1, [LA/c;

    iput-object v2, p0, LA/f;->I0:[LA/c;

    new-array v1, v1, [LA/c;

    iput-object v1, p0, LA/f;->J0:[LA/c;

    iput-boolean v0, p0, LA/f;->K0:Z

    iput-boolean v0, p0, LA/f;->L0:Z

    iput-boolean v0, p0, LA/f;->M0:Z

    iput v0, p0, LA/f;->N0:I

    iput v0, p0, LA/f;->O0:I

    const/16 v1, 0x107

    iput v1, p0, LA/f;->P0:I

    iput-boolean v0, p0, LA/f;->Q0:Z

    iput-boolean v0, p0, LA/f;->R0:Z

    iput-boolean v0, p0, LA/f;->S0:Z

    iput v0, p0, LA/f;->T0:I

    return-void
.end method


# virtual methods
.method public E0(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, LA/e;->E0(ZZ)V

    iget-object v0, p0, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA/e;

    invoke-virtual {v2, p1, p2}, LA/e;->E0(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G0()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, LA/e;->S:I

    iput v2, v1, LA/e;->T:I

    invoke-virtual/range {p0 .. p0}, LA/e;->N()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, LA/e;->t()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput-boolean v2, v1, LA/f;->R0:Z

    iput-boolean v2, v1, LA/f;->S0:Z

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, LA/f;->Y0(I)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    const/16 v0, 0x80

    invoke-virtual {v1, v0}, LA/f;->Y0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    :goto_1
    iget-object v6, v1, LA/f;->B0:Lz/d;

    iput-boolean v2, v6, Lz/d;->g:Z

    iput-boolean v2, v6, Lz/d;->h:Z

    iget v7, v1, LA/f;->P0:I

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    iput-boolean v5, v6, Lz/d;->h:Z

    :cond_2
    iget-object v0, v1, LA/e;->M:[LA/e$b;

    aget-object v6, v0, v5

    aget-object v7, v0, v2

    iget-object v8, v1, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, LA/e;->w()LA/e$b;

    move-result-object v0

    sget-object v9, LA/e$b;->f:LA/e$b;

    if-eq v0, v9, :cond_4

    invoke-virtual/range {p0 .. p0}, LA/e;->K()LA/e$b;

    move-result-object v0

    if-ne v0, v9, :cond_3

    goto :goto_2

    :cond_3
    move v9, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v9, v5

    :goto_3
    invoke-virtual/range {p0 .. p0}, LA/f;->Z0()V

    iget-object v0, v1, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v0, v2

    :goto_4
    if-ge v0, v10, :cond_6

    iget-object v11, v1, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LA/e;

    instance-of v12, v11, LA/k;

    if-eqz v12, :cond_5

    check-cast v11, LA/k;

    invoke-virtual {v11}, LA/k;->G0()V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v0, v2

    move v12, v0

    move v11, v5

    :goto_5
    if-eqz v11, :cond_13

    add-int/lit8 v13, v0, 0x1

    :try_start_0
    iget-object v0, v1, LA/f;->B0:Lz/d;

    invoke-virtual {v0}, Lz/d;->D()V

    invoke-virtual/range {p0 .. p0}, LA/f;->Z0()V

    iget-object v0, v1, LA/f;->B0:Lz/d;

    invoke-virtual {v1, v0}, LA/e;->j(Lz/d;)V

    move v0, v2

    :goto_6
    if-ge v0, v10, :cond_7

    iget-object v14, v1, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LA/e;

    iget-object v15, v1, LA/f;->B0:Lz/d;

    invoke-virtual {v14, v15}, LA/e;->j(Lz/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_7
    iget-object v0, v1, LA/f;->B0:Lz/d;

    invoke-virtual {v1, v0}, LA/f;->K0(Lz/d;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v0, v1, LA/f;->B0:Lz/d;

    invoke-virtual {v0}, Lz/d;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXCEPTION : "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    :goto_8
    if-eqz v11, :cond_9

    iget-object v0, v1, LA/f;->B0:Lz/d;

    sget-object v5, LA/j;->a:[Z

    invoke-virtual {v1, v0, v5}, LA/f;->d1(Lz/d;[Z)V

    goto :goto_a

    :cond_9
    iget-object v0, v1, LA/f;->B0:Lz/d;

    invoke-virtual {v1, v0}, LA/e;->F0(Lz/d;)V

    move v0, v2

    :goto_9
    if-ge v0, v10, :cond_a

    iget-object v5, v1, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LA/e;

    iget-object v11, v1, LA/f;->B0:Lz/d;

    invoke-virtual {v5, v11}, LA/e;->F0(Lz/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_a
    :goto_a
    if-eqz v9, :cond_d

    const/16 v0, 0x8

    if-ge v13, v0, :cond_d

    sget-object v0, LA/j;->a:[Z

    const/4 v5, 0x2

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_d

    move v0, v2

    move v5, v0

    move v11, v5

    :goto_b
    if-ge v0, v10, :cond_b

    iget-object v14, v1, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LA/e;

    iget v15, v14, LA/e;->S:I

    invoke-virtual {v14}, LA/e;->N()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v15, v14, LA/e;->T:I

    invoke-virtual {v14}, LA/e;->t()I

    move-result v14

    add-int/2addr v15, v14

    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_b
    iget v0, v1, LA/e;->Z:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v5, v1, LA/e;->a0:I

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    sget-object v11, LA/e$b;->f:LA/e$b;

    if-ne v7, v11, :cond_c

    invoke-virtual/range {p0 .. p0}, LA/e;->N()I

    move-result v14

    if-ge v14, v0, :cond_c

    invoke-virtual {v1, v0}, LA/e;->A0(I)V

    iget-object v0, v1, LA/e;->M:[LA/e$b;

    aput-object v11, v0, v2

    const/4 v0, 0x1

    const/4 v12, 0x1

    goto :goto_c

    :cond_c
    move v0, v2

    :goto_c
    if-ne v6, v11, :cond_e

    invoke-virtual/range {p0 .. p0}, LA/e;->t()I

    move-result v14

    if-ge v14, v5, :cond_e

    invoke-virtual {v1, v5}, LA/e;->e0(I)V

    iget-object v0, v1, LA/e;->M:[LA/e$b;

    const/4 v5, 0x1

    aput-object v11, v0, v5

    const/4 v0, 0x1

    const/4 v12, 0x1

    goto :goto_d

    :cond_d
    move v0, v2

    :cond_e
    :goto_d
    iget v5, v1, LA/e;->Z:I

    invoke-virtual/range {p0 .. p0}, LA/e;->N()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, LA/e;->N()I

    move-result v11

    if-le v5, v11, :cond_f

    invoke-virtual {v1, v5}, LA/e;->A0(I)V

    iget-object v0, v1, LA/e;->M:[LA/e$b;

    sget-object v5, LA/e$b;->e:LA/e$b;

    aput-object v5, v0, v2

    const/4 v0, 0x1

    const/4 v12, 0x1

    :cond_f
    iget v5, v1, LA/e;->a0:I

    invoke-virtual/range {p0 .. p0}, LA/e;->t()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, LA/e;->t()I

    move-result v11

    if-le v5, v11, :cond_10

    invoke-virtual {v1, v5}, LA/e;->e0(I)V

    iget-object v0, v1, LA/e;->M:[LA/e$b;

    sget-object v5, LA/e$b;->e:LA/e$b;

    const/4 v11, 0x1

    aput-object v5, v0, v11

    move v0, v11

    move v5, v0

    goto :goto_e

    :cond_10
    const/4 v11, 0x1

    move v5, v12

    :goto_e
    if-nez v5, :cond_12

    iget-object v12, v1, LA/e;->M:[LA/e$b;

    aget-object v12, v12, v2

    sget-object v14, LA/e$b;->f:LA/e$b;

    if-ne v12, v14, :cond_11

    if-lez v3, :cond_11

    invoke-virtual/range {p0 .. p0}, LA/e;->N()I

    move-result v12

    if-le v12, v3, :cond_11

    iput-boolean v11, v1, LA/f;->R0:Z

    iget-object v0, v1, LA/e;->M:[LA/e$b;

    sget-object v5, LA/e$b;->e:LA/e$b;

    aput-object v5, v0, v2

    invoke-virtual {v1, v3}, LA/e;->A0(I)V

    move v0, v11

    move v5, v0

    :cond_11
    iget-object v12, v1, LA/e;->M:[LA/e$b;

    aget-object v12, v12, v11

    if-ne v12, v14, :cond_12

    if-lez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, LA/e;->t()I

    move-result v12

    if-le v12, v4, :cond_12

    iput-boolean v11, v1, LA/f;->S0:Z

    iget-object v0, v1, LA/e;->M:[LA/e$b;

    sget-object v5, LA/e$b;->e:LA/e$b;

    aput-object v5, v0, v11

    invoke-virtual {v1, v4}, LA/e;->e0(I)V

    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_f

    :cond_12
    move v11, v0

    move v12, v5

    :goto_f
    move v0, v13

    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_13
    iput-object v8, v1, LA/k;->w0:Ljava/util/ArrayList;

    if-eqz v12, :cond_14

    iget-object v0, v1, LA/e;->M:[LA/e$b;

    aput-object v7, v0, v2

    const/4 v2, 0x1

    aput-object v6, v0, v2

    :cond_14
    iget-object v0, v1, LA/f;->B0:Lz/d;

    invoke-virtual {v0}, Lz/d;->v()Lz/c;

    move-result-object v0

    invoke-virtual {v1, v0}, LA/k;->X(Lz/c;)V

    return-void
.end method

.method public J0(LA/e;I)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, LA/f;->L0(LA/e;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, LA/f;->M0(LA/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public K0(Lz/d;)Z
    .locals 9

    invoke-virtual {p0, p1}, LA/e;->f(Lz/d;)V

    iget-object v0, p0, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_1

    iget-object v5, p0, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LA/e;

    invoke-virtual {v5, v1, v1}, LA/e;->l0(IZ)V

    invoke-virtual {v5, v4, v1}, LA/e;->l0(IZ)V

    instance-of v5, v5, LA/a;

    if-eqz v5, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v3, p0, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA/e;

    instance-of v5, v3, LA/a;

    if-eqz v5, :cond_2

    check-cast v3, LA/a;

    invoke-virtual {v3}, LA/a;->J0()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v3, p0, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA/e;

    invoke-virtual {v3}, LA/e;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, p1}, LA/e;->f(Lz/d;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_b

    iget-object v3, p0, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA/e;

    instance-of v5, v3, LA/f;

    if-eqz v5, :cond_9

    iget-object v5, v3, LA/e;->M:[LA/e$b;

    aget-object v6, v5, v1

    aget-object v5, v5, v4

    sget-object v7, LA/e$b;->f:LA/e$b;

    if-ne v6, v7, :cond_6

    sget-object v8, LA/e$b;->e:LA/e$b;

    invoke-virtual {v3, v8}, LA/e;->i0(LA/e$b;)V

    :cond_6
    if-ne v5, v7, :cond_7

    sget-object v8, LA/e$b;->e:LA/e$b;

    invoke-virtual {v3, v8}, LA/e;->w0(LA/e$b;)V

    :cond_7
    invoke-virtual {v3, p1}, LA/e;->f(Lz/d;)V

    if-ne v6, v7, :cond_8

    invoke-virtual {v3, v6}, LA/e;->i0(LA/e$b;)V

    :cond_8
    if-ne v5, v7, :cond_a

    invoke-virtual {v3, v5}, LA/e;->w0(LA/e$b;)V

    goto :goto_4

    :cond_9
    invoke-static {p0, p1, v3}, LA/j;->a(LA/f;Lz/d;LA/e;)V

    invoke-virtual {v3}, LA/e;->e()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v3, p1}, LA/e;->f(Lz/d;)V

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    iget v0, p0, LA/f;->G0:I

    if-lez v0, :cond_c

    invoke-static {p0, p1, v1}, LA/b;->a(LA/f;Lz/d;I)V

    :cond_c
    iget v0, p0, LA/f;->H0:I

    if-lez v0, :cond_d

    invoke-static {p0, p1, v4}, LA/b;->a(LA/f;Lz/d;I)V

    :cond_d
    return v4
.end method

.method public final L0(LA/e;)V
    .locals 5

    iget v0, p0, LA/f;->G0:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, LA/f;->J0:[LA/c;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LA/c;

    iput-object v0, p0, LA/f;->J0:[LA/c;

    :cond_0
    iget-object v0, p0, LA/f;->J0:[LA/c;

    iget v1, p0, LA/f;->G0:I

    new-instance v2, LA/c;

    const/4 v3, 0x0

    invoke-virtual {p0}, LA/f;->V0()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, LA/c;-><init>(LA/e;IZ)V

    aput-object v2, v0, v1

    iget p1, p0, LA/f;->G0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LA/f;->G0:I

    return-void
.end method

.method public final M0(LA/e;)V
    .locals 5

    iget v0, p0, LA/f;->H0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, LA/f;->I0:[LA/c;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LA/c;

    iput-object v0, p0, LA/f;->I0:[LA/c;

    :cond_0
    iget-object v0, p0, LA/f;->I0:[LA/c;

    iget v2, p0, LA/f;->H0:I

    new-instance v3, LA/c;

    invoke-virtual {p0}, LA/f;->V0()Z

    move-result v4

    invoke-direct {v3, p1, v1, v4}, LA/c;-><init>(LA/e;IZ)V

    aput-object v3, v0, v2

    iget p1, p0, LA/f;->H0:I

    add-int/2addr p1, v1

    iput p1, p0, LA/f;->H0:I

    return-void
.end method

.method public N0(Z)Z
    .locals 1

    iget-object v0, p0, LA/f;->y0:LB/e;

    invoke-virtual {v0, p1}, LB/e;->f(Z)Z

    move-result p1

    return p1
.end method

.method public O0(Z)Z
    .locals 1

    iget-object v0, p0, LA/f;->y0:LB/e;

    invoke-virtual {v0, p1}, LB/e;->g(Z)Z

    move-result p1

    return p1
.end method

.method public P0(ZI)Z
    .locals 1

    iget-object v0, p0, LA/f;->y0:LB/e;

    invoke-virtual {v0, p1, p2}, LB/e;->h(ZI)Z

    move-result p1

    return p1
.end method

.method public Q0()LB/b$b;
    .locals 1

    iget-object v0, p0, LA/f;->z0:LB/b$b;

    return-object v0
.end method

.method public R0()I
    .locals 1

    iget v0, p0, LA/f;->P0:I

    return v0
.end method

.method public S0()V
    .locals 1

    iget-object v0, p0, LA/f;->y0:LB/e;

    invoke-virtual {v0}, LB/e;->j()V

    return-void
.end method

.method public T0()V
    .locals 1

    iget-object v0, p0, LA/f;->y0:LB/e;

    invoke-virtual {v0}, LB/e;->k()V

    return-void
.end method

.method public U0()Z
    .locals 1

    iget-boolean v0, p0, LA/f;->S0:Z

    return v0
.end method

.method public V0()Z
    .locals 1

    iget-boolean v0, p0, LA/f;->A0:Z

    return v0
.end method

.method public W()V
    .locals 1

    iget-object v0, p0, LA/f;->B0:Lz/d;

    invoke-virtual {v0}, Lz/d;->D()V

    const/4 v0, 0x0

    iput v0, p0, LA/f;->C0:I

    iput v0, p0, LA/f;->E0:I

    iput v0, p0, LA/f;->D0:I

    iput v0, p0, LA/f;->F0:I

    iput-boolean v0, p0, LA/f;->Q0:Z

    invoke-super {p0}, LA/k;->W()V

    return-void
.end method

.method public W0()Z
    .locals 1

    iget-boolean v0, p0, LA/f;->R0:Z

    return v0
.end method

.method public X0(IIIIIIIII)J
    .locals 12

    move-object v11, p0

    move/from16 v3, p8

    iput v3, v11, LA/f;->C0:I

    move/from16 v4, p9

    iput v4, v11, LA/f;->D0:I

    iget-object v0, v11, LA/f;->x0:LB/b;

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, LB/b;->d(LA/f;IIIIIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public Y0(I)Z
    .locals 1

    iget v0, p0, LA/f;->P0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final Z0()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LA/f;->G0:I

    iput v0, p0, LA/f;->H0:I

    return-void
.end method

.method public a1(LB/b$b;)V
    .locals 1

    iput-object p1, p0, LA/f;->z0:LB/b$b;

    iget-object v0, p0, LA/f;->y0:LB/e;

    invoke-virtual {v0, p1}, LB/e;->n(LB/b$b;)V

    return-void
.end method

.method public b1(I)V
    .locals 1

    iput p1, p0, LA/f;->P0:I

    const/16 v0, 0x100

    invoke-static {p1, v0}, LA/j;->b(II)Z

    move-result p1

    sput-boolean p1, Lz/d;->r:Z

    return-void
.end method

.method public c1(Z)V
    .locals 0

    iput-boolean p1, p0, LA/f;->A0:Z

    return-void
.end method

.method public d1(Lz/d;[Z)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p2, v0

    invoke-virtual {p0, p1}, LA/e;->F0(Lz/d;)V

    iget-object p2, p0, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v0, p0, LA/k;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA/e;

    invoke-virtual {v0, p1}, LA/e;->F0(Lz/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e1()V
    .locals 1

    iget-object v0, p0, LA/f;->x0:LB/b;

    invoke-virtual {v0, p0}, LB/b;->e(LA/f;)V

    return-void
.end method
