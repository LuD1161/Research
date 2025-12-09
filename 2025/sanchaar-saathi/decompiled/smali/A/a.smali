.class public LA/a;
.super LA/i;
.source "SourceFile"


# instance fields
.field public A0:I

.field public y0:I

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LA/i;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LA/a;->y0:I

    const/4 v1, 0x1

    iput-boolean v1, p0, LA/a;->z0:Z

    iput v0, p0, LA/a;->A0:I

    return-void
.end method


# virtual methods
.method public G0()Z
    .locals 1

    iget-boolean v0, p0, LA/a;->z0:Z

    return v0
.end method

.method public H0()I
    .locals 1

    iget v0, p0, LA/a;->y0:I

    return v0
.end method

.method public I0()I
    .locals 1

    iget v0, p0, LA/a;->A0:I

    return v0
.end method

.method public J0()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, LA/i;->x0:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, LA/i;->w0:[LA/e;

    aget-object v2, v2, v1

    iget v3, p0, LA/a;->y0:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    :cond_1
    invoke-virtual {v2, v4, v4}, LA/e;->l0(IZ)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v2, v0, v4}, LA/e;->l0(IZ)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public K0(Z)V
    .locals 0

    iput-boolean p1, p0, LA/a;->z0:Z

    return-void
.end method

.method public L0(I)V
    .locals 0

    iput p1, p0, LA/a;->y0:I

    return-void
.end method

.method public M0(I)V
    .locals 0

    iput p1, p0, LA/a;->A0:I

    return-void
.end method

.method public f(Lz/d;)V
    .locals 13

    iget-object v0, p0, LA/e;->J:[LA/d;

    iget-object v1, p0, LA/e;->B:LA/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, LA/e;->C:LA/d;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, LA/e;->D:LA/d;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    iget-object v1, p0, LA/e;->E:LA/d;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    move v0, v2

    :goto_0
    iget-object v1, p0, LA/e;->J:[LA/d;

    array-length v6, v1

    if-ge v0, v6, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lz/d;->q(Ljava/lang/Object;)Lz/i;

    move-result-object v6

    iput-object v6, v1, LA/d;->g:Lz/i;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, LA/a;->y0:I

    if-ltz v0, :cond_19

    const/4 v6, 0x4

    if-ge v0, v6, :cond_19

    aget-object v0, v1, v0

    move v1, v2

    :goto_1
    iget v7, p0, LA/i;->x0:I

    if-ge v1, v7, :cond_6

    iget-object v7, p0, LA/i;->w0:[LA/e;

    aget-object v7, v7, v1

    iget-boolean v8, p0, LA/a;->z0:Z

    if-nez v8, :cond_1

    invoke-virtual {v7}, LA/e;->g()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    iget v8, p0, LA/a;->y0:I

    if-eqz v8, :cond_2

    if-ne v8, v4, :cond_3

    :cond_2
    invoke-virtual {v7}, LA/e;->w()LA/e$b;

    move-result-object v8

    sget-object v9, LA/e$b;->g:LA/e$b;

    if-ne v8, v9, :cond_3

    iget-object v8, v7, LA/e;->B:LA/d;

    iget-object v8, v8, LA/d;->d:LA/d;

    if-eqz v8, :cond_3

    iget-object v8, v7, LA/e;->D:LA/d;

    iget-object v8, v8, LA/d;->d:LA/d;

    if-eqz v8, :cond_3

    :goto_2
    move v1, v4

    goto :goto_4

    :cond_3
    iget v8, p0, LA/a;->y0:I

    if-eq v8, v3, :cond_4

    if-ne v8, v5, :cond_5

    :cond_4
    invoke-virtual {v7}, LA/e;->K()LA/e$b;

    move-result-object v8

    sget-object v9, LA/e$b;->g:LA/e$b;

    if-ne v8, v9, :cond_5

    iget-object v8, v7, LA/e;->C:LA/d;

    iget-object v8, v8, LA/d;->d:LA/d;

    if-eqz v8, :cond_5

    iget-object v7, v7, LA/e;->E:LA/d;

    iget-object v7, v7, LA/d;->d:LA/d;

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_4
    iget-object v7, p0, LA/e;->B:LA/d;

    invoke-virtual {v7}, LA/d;->h()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, LA/e;->D:LA/d;

    invoke-virtual {v7}, LA/d;->h()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    move v7, v2

    goto :goto_6

    :cond_8
    :goto_5
    move v7, v4

    :goto_6
    iget-object v8, p0, LA/e;->C:LA/d;

    invoke-virtual {v8}, LA/d;->h()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, p0, LA/e;->E:LA/d;

    invoke-virtual {v8}, LA/d;->h()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_7

    :cond_9
    move v8, v2

    goto :goto_8

    :cond_a
    :goto_7
    move v8, v4

    :goto_8
    if-nez v1, :cond_f

    iget v9, p0, LA/a;->y0:I

    if-nez v9, :cond_b

    if-nez v7, :cond_e

    :cond_b
    if-ne v9, v3, :cond_c

    if-nez v8, :cond_e

    :cond_c
    if-ne v9, v4, :cond_d

    if-nez v7, :cond_e

    :cond_d
    if-ne v9, v5, :cond_f

    if-eqz v8, :cond_f

    :cond_e
    move v7, v4

    goto :goto_9

    :cond_f
    move v7, v2

    :goto_9
    if-nez v7, :cond_10

    move v7, v6

    goto :goto_a

    :cond_10
    const/4 v7, 0x5

    :goto_a
    move v8, v2

    :goto_b
    iget v9, p0, LA/i;->x0:I

    if-ge v8, v9, :cond_15

    iget-object v9, p0, LA/i;->w0:[LA/e;

    aget-object v9, v9, v8

    iget-boolean v10, p0, LA/a;->z0:Z

    if-nez v10, :cond_11

    invoke-virtual {v9}, LA/e;->g()Z

    move-result v10

    if-nez v10, :cond_11

    goto :goto_f

    :cond_11
    iget-object v10, v9, LA/e;->J:[LA/d;

    iget v11, p0, LA/a;->y0:I

    aget-object v10, v10, v11

    invoke-virtual {p1, v10}, Lz/d;->q(Ljava/lang/Object;)Lz/i;

    move-result-object v10

    iget-object v9, v9, LA/e;->J:[LA/d;

    iget v11, p0, LA/a;->y0:I

    aget-object v9, v9, v11

    iput-object v10, v9, LA/d;->g:Lz/i;

    iget-object v12, v9, LA/d;->d:LA/d;

    if-eqz v12, :cond_12

    iget-object v12, v12, LA/d;->b:LA/e;

    if-ne v12, p0, :cond_12

    iget v9, v9, LA/d;->e:I

    goto :goto_c

    :cond_12
    move v9, v2

    :goto_c
    if-eqz v11, :cond_14

    if-ne v11, v3, :cond_13

    goto :goto_d

    :cond_13
    iget-object v11, v0, LA/d;->g:Lz/i;

    iget v12, p0, LA/a;->A0:I

    add-int/2addr v12, v9

    invoke-virtual {p1, v11, v10, v12, v1}, Lz/d;->g(Lz/i;Lz/i;IZ)V

    goto :goto_e

    :cond_14
    :goto_d
    iget-object v11, v0, LA/d;->g:Lz/i;

    iget v12, p0, LA/a;->A0:I

    sub-int/2addr v12, v9

    invoke-virtual {p1, v11, v10, v12, v1}, Lz/d;->i(Lz/i;Lz/i;IZ)V

    :goto_e
    iget-object v11, v0, LA/d;->g:Lz/i;

    iget v12, p0, LA/a;->A0:I

    add-int/2addr v12, v9

    invoke-virtual {p1, v11, v10, v12, v7}, Lz/d;->e(Lz/i;Lz/i;II)Lz/b;

    :goto_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_15
    iget v0, p0, LA/a;->y0:I

    const/16 v1, 0x8

    if-nez v0, :cond_16

    iget-object v0, p0, LA/e;->D:LA/d;

    iget-object v0, v0, LA/d;->g:Lz/i;

    iget-object v3, p0, LA/e;->B:LA/d;

    iget-object v3, v3, LA/d;->g:Lz/i;

    invoke-virtual {p1, v0, v3, v2, v1}, Lz/d;->e(Lz/i;Lz/i;II)Lz/b;

    iget-object v0, p0, LA/e;->B:LA/d;

    iget-object v0, v0, LA/d;->g:Lz/i;

    iget-object v1, p0, LA/e;->N:LA/e;

    iget-object v1, v1, LA/e;->D:LA/d;

    iget-object v1, v1, LA/d;->g:Lz/i;

    invoke-virtual {p1, v0, v1, v2, v6}, Lz/d;->e(Lz/i;Lz/i;II)Lz/b;

    iget-object v0, p0, LA/e;->B:LA/d;

    iget-object v0, v0, LA/d;->g:Lz/i;

    iget-object v1, p0, LA/e;->N:LA/e;

    iget-object v1, v1, LA/e;->B:LA/d;

    iget-object v1, v1, LA/d;->g:Lz/i;

    invoke-virtual {p1, v0, v1, v2, v2}, Lz/d;->e(Lz/i;Lz/i;II)Lz/b;

    goto/16 :goto_10

    :cond_16
    if-ne v0, v4, :cond_17

    iget-object v0, p0, LA/e;->B:LA/d;

    iget-object v0, v0, LA/d;->g:Lz/i;

    iget-object v3, p0, LA/e;->D:LA/d;

    iget-object v3, v3, LA/d;->g:Lz/i;

    invoke-virtual {p1, v0, v3, v2, v1}, Lz/d;->e(Lz/i;Lz/i;II)Lz/b;

    iget-object v0, p0, LA/e;->B:LA/d;

    iget-object v0, v0, LA/d;->g:Lz/i;

    iget-object v1, p0, LA/e;->N:LA/e;

    iget-object v1, v1, LA/e;->B:LA/d;

    iget-object v1, v1, LA/d;->g:Lz/i;

    invoke-virtual {p1, v0, v1, v2, v6}, Lz/d;->e(Lz/i;Lz/i;II)Lz/b;

    iget-object v0, p0, LA/e;->B:LA/d;

    iget-object v0, v0, LA/d;->g:Lz/i;

    iget-object v1, p0, LA/e;->N:LA/e;

    iget-object v1, v1, LA/e;->D:LA/d;

    iget-object v1, v1, LA/d;->g:Lz/i;

    invoke-virtual {p1, v0, v1, v2, v2}, Lz/d;->e(Lz/i;Lz/i;II)Lz/b;

    goto :goto_10

    :cond_17
    if-ne v0, v3, :cond_18

    iget-object v0, p0, LA/e;->E:LA/d;

    iget-object v0, v0, LA/d;->g:Lz/i;

    iget-object v3, p0, LA/e;->C:LA/d;

    iget-object v3, v3, LA/d;->g:Lz/i;

    invoke-virtual {p1, v0, v3, v2, v1}, Lz/d;->e(Lz/i;Lz/i;II)Lz/b;

    iget-object v0, p0, LA/e;->C:LA/d;

    iget-object v0, v0, LA/d;->g:Lz/i;

    iget-object v1, p0, LA/e;->N:LA/e;

    iget-object v1, v1, LA/e;->E:LA/d;

    iget-object v1, v1, LA/d;->g:Lz/i;

    invoke-virtual {p1, v0, v1, v2, v6}, Lz/d;->e(Lz/i;Lz/i;II)Lz/b;

    iget-object v0, p0, LA/e;->C:LA/d;

    iget-object v0, v0, LA/d;->g:Lz/i;

    iget-object v1, p0, LA/e;->N:LA/e;

    iget-object v1, v1, LA/e;->C:LA/d;

    iget-object v1, v1, LA/d;->g:Lz/i;

    invoke-virtual {p1, v0, v1, v2, v2}, Lz/d;->e(Lz/i;Lz/i;II)Lz/b;

    goto :goto_10

    :cond_18
    if-ne v0, v5, :cond_19

    iget-object v0, p0, LA/e;->C:LA/d;

    iget-object v0, v0, LA/d;->g:Lz/i;

    iget-object v3, p0, LA/e;->E:LA/d;

    iget-object v3, v3, LA/d;->g:Lz/i;

    invoke-virtual {p1, v0, v3, v2, v1}, Lz/d;->e(Lz/i;Lz/i;II)Lz/b;

    iget-object v0, p0, LA/e;->C:LA/d;

    iget-object v0, v0, LA/d;->g:Lz/i;

    iget-object v1, p0, LA/e;->N:LA/e;

    iget-object v1, v1, LA/e;->C:LA/d;

    iget-object v1, v1, LA/d;->g:Lz/i;

    invoke-virtual {p1, v0, v1, v2, v6}, Lz/d;->e(Lz/i;Lz/i;II)Lz/b;

    iget-object v0, p0, LA/e;->C:LA/d;

    iget-object v0, v0, LA/d;->g:Lz/i;

    iget-object v1, p0, LA/e;->N:LA/e;

    iget-object v1, v1, LA/e;->E:LA/d;

    iget-object v1, v1, LA/d;->g:Lz/i;

    invoke-virtual {p1, v0, v1, v2, v2}, Lz/d;->e(Lz/i;Lz/i;II)Lz/b;

    :cond_19
    :goto_10
    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Barrier] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LA/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, LA/i;->x0:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LA/i;->w0:[LA/e;

    aget-object v2, v2, v1

    if-lez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LA/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
