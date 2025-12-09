.class public final Lcom/google/android/gms/internal/clearcut/M1;
.super Lcom/google/android/gms/internal/clearcut/w1;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public A:Lcom/google/android/gms/internal/clearcut/D1;

.field public B:Z

.field public f:J

.field public g:J

.field public h:J

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Z

.field public n:[Lcom/google/android/gms/internal/clearcut/N1;

.field public o:[B

.field public p:Lcom/google/android/gms/internal/clearcut/C1;

.field public q:[B

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:J

.field public v:[B

.field public w:Ljava/lang/String;

.field public x:I

.field public y:[I

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/w1;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->f:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->h:J

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/M1;->i:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->j:I

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/M1;->k:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->l:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->m:Z

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/N1;->l()[Lcom/google/android/gms/internal/clearcut/N1;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/clearcut/M1;->n:[Lcom/google/android/gms/internal/clearcut/N1;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/B1;->h:[B

    iput-object v4, p0, Lcom/google/android/gms/internal/clearcut/M1;->o:[B

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/gms/internal/clearcut/M1;->p:Lcom/google/android/gms/internal/clearcut/C1;

    iput-object v4, p0, Lcom/google/android/gms/internal/clearcut/M1;->q:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/M1;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/M1;->s:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/M1;->t:Ljava/lang/String;

    const-wide/32 v6, 0x2bf20

    iput-wide v6, p0, Lcom/google/android/gms/internal/clearcut/M1;->u:J

    iput-object v4, p0, Lcom/google/android/gms/internal/clearcut/M1;->v:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/M1;->w:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->x:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/B1;->a:[I

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/M1;->y:[I

    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->z:J

    iput-object v5, p0, Lcom/google/android/gms/internal/clearcut/M1;->A:Lcom/google/android/gms/internal/clearcut/D1;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->B:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/y1;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/clearcut/u1;)V
    .locals 10

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/android/gms/internal/clearcut/u1;->r(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->i:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/M1;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/clearcut/u1;->b(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->n:[Lcom/google/android/gms/internal/clearcut/N1;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v4

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/M1;->n:[Lcom/google/android/gms/internal/clearcut/N1;

    array-length v6, v5

    if-ge v0, v6, :cond_2

    aget-object v5, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->o:[B

    sget-object v5, Lcom/google/android/gms/internal/clearcut/B1;->h:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/M1;->o:[B

    invoke-virtual {p1, v0, v6}, Lcom/google/android/gms/internal/clearcut/u1;->c(I[B)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->q:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/M1;->q:[B

    invoke-virtual {p1, v0, v6}, Lcom/google/android/gms/internal/clearcut/u1;->c(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->r:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x8

    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/M1;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v6}, Lcom/google/android/gms/internal/clearcut/u1;->b(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->p:Lcom/google/android/gms/internal/clearcut/C1;

    if-eqz v0, :cond_6

    const/16 v6, 0x9

    invoke-virtual {p1, v6, v0}, Lcom/google/android/gms/internal/clearcut/u1;->m(ILcom/google/android/gms/internal/clearcut/B0;)V

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->j:I

    if-eqz v0, :cond_7

    const/16 v6, 0xb

    invoke-virtual {p1, v6, v0}, Lcom/google/android/gms/internal/clearcut/u1;->j(II)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->s:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0xd

    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/M1;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v6}, Lcom/google/android/gms/internal/clearcut/u1;->b(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->t:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xe

    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/M1;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v6}, Lcom/google/android/gms/internal/clearcut/u1;->b(ILjava/lang/String;)V

    :cond_9
    iget-wide v6, p0, Lcom/google/android/gms/internal/clearcut/M1;->u:J

    const-wide/32 v8, 0x2bf20

    cmp-long v0, v6, v8

    if-eqz v0, :cond_a

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/clearcut/u1;->h(II)V

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/clearcut/u1;->s(J)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/u1;->t(J)V

    :cond_a
    iget-wide v6, p0, Lcom/google/android/gms/internal/clearcut/M1;->g:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_b

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v6, v7}, Lcom/google/android/gms/internal/clearcut/u1;->r(IJ)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->v:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/M1;->v:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/clearcut/u1;->c(I[B)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->y:[I

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->y:[I

    array-length v2, v0

    if-ge v4, v2, :cond_d

    const/16 v2, 0x14

    aget v0, v0, v4

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/clearcut/u1;->j(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->A:Lcom/google/android/gms/internal/clearcut/D1;

    if-eqz v0, :cond_e

    const/16 v2, 0x17

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/clearcut/u1;->m(ILcom/google/android/gms/internal/clearcut/B0;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->w:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x18

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/M1;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/clearcut/u1;->b(ILjava/lang/String;)V

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->B:Z

    if-eqz v0, :cond_10

    const/16 v2, 0x19

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/clearcut/u1;->i(IZ)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/M1;->k:Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/u1;->b(ILjava/lang/String;)V

    :cond_11
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/clearcut/w1;->a(Lcom/google/android/gms/internal/clearcut/u1;)V

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/M1;->l()Lcom/google/android/gms/internal/clearcut/M1;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/M1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/clearcut/M1;

    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->f:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/M1;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->g:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/M1;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->i:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/M1;->i:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->j:I

    iget v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->j:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->k:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/M1;->k:Ljava/lang/String;

    if-eqz v1, :cond_8

    return v2

    :cond_7
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->n:[Lcom/google/android/gms/internal/clearcut/N1;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->n:[Lcom/google/android/gms/internal/clearcut/N1;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/x1;->b([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->o:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->o:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->p:Lcom/google/android/gms/internal/clearcut/C1;

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/M1;->p:Lcom/google/android/gms/internal/clearcut/C1;

    if-eqz v1, :cond_c

    return v2

    :cond_b
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->p:Lcom/google/android/gms/internal/clearcut/C1;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/a0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->q:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->q:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->r:Ljava/lang/String;

    if-nez v1, :cond_e

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/M1;->r:Ljava/lang/String;

    if-eqz v1, :cond_f

    return v2

    :cond_e
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->r:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->s:Ljava/lang/String;

    if-nez v1, :cond_10

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/M1;->s:Ljava/lang/String;

    if-eqz v1, :cond_11

    return v2

    :cond_10
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->s:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->t:Ljava/lang/String;

    if-nez v1, :cond_12

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/M1;->t:Ljava/lang/String;

    if-eqz v1, :cond_13

    return v2

    :cond_12
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->t:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->u:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/M1;->u:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->v:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->v:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->w:Ljava/lang/String;

    if-nez v1, :cond_16

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/M1;->w:Ljava/lang/String;

    if-eqz v1, :cond_17

    return v2

    :cond_16
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->w:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->y:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->y:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/x1;->a([I[I)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->A:Lcom/google/android/gms/internal/clearcut/D1;

    if-nez v1, :cond_19

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/M1;->A:Lcom/google/android/gms/internal/clearcut/D1;

    if-eqz v1, :cond_1a

    return v2

    :cond_19
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/M1;->A:Lcom/google/android/gms/internal/clearcut/D1;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/a0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->B:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/clearcut/M1;->B:Z

    if-eq v1, p1, :cond_1b

    return v2

    :cond_1b
    return v0
.end method

.method public final g()I
    .locals 13

    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/w1;->g()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/internal/clearcut/u1;->k(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->i:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v5, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/u1;->f(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->n:[Lcom/google/android/gms/internal/clearcut/N1;

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v7

    :goto_0
    iget-object v8, p0, Lcom/google/android/gms/internal/clearcut/M1;->n:[Lcom/google/android/gms/internal/clearcut/N1;

    array-length v9, v8

    if-ge v1, v9, :cond_2

    aget-object v8, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->o:[B

    sget-object v8, Lcom/google/android/gms/internal/clearcut/B1;->h:[B

    invoke-static {v1, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/M1;->o:[B

    invoke-static {v1, v9}, Lcom/google/android/gms/internal/clearcut/u1;->g(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->q:[B

    invoke-static {v1, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x6

    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/M1;->q:[B

    invoke-static {v1, v9}, Lcom/google/android/gms/internal/clearcut/u1;->g(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->r:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x8

    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/M1;->r:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/google/android/gms/internal/clearcut/u1;->f(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->p:Lcom/google/android/gms/internal/clearcut/C1;

    if-eqz v1, :cond_6

    const/16 v9, 0x9

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/clearcut/K;->L(ILcom/google/android/gms/internal/clearcut/B0;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->j:I

    if-eqz v1, :cond_7

    const/16 v9, 0xb

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/u1;->v(I)I

    move-result v9

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/u1;->w(I)I

    move-result v1

    add-int/2addr v9, v1

    add-int/2addr v0, v9

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->s:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0xd

    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/M1;->s:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/google/android/gms/internal/clearcut/u1;->f(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->t:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xe

    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/M1;->t:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/google/android/gms/internal/clearcut/u1;->f(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-wide v9, p0, Lcom/google/android/gms/internal/clearcut/M1;->u:J

    const-wide/32 v11, 0x2bf20

    cmp-long v1, v9, v11

    if-eqz v1, :cond_a

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/u1;->v(I)I

    move-result v1

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/clearcut/u1;->s(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/clearcut/u1;->u(J)I

    move-result v9

    add-int/2addr v1, v9

    add-int/2addr v0, v1

    :cond_a
    iget-wide v9, p0, Lcom/google/android/gms/internal/clearcut/M1;->g:J

    cmp-long v1, v9, v3

    if-eqz v1, :cond_b

    const/16 v1, 0x11

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/clearcut/u1;->k(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->v:[B

    invoke-static {v1, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0x12

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->v:[B

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/u1;->g(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->y:[I

    if-eqz v1, :cond_e

    array-length v1, v1

    if-lez v1, :cond_e

    move v1, v7

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->y:[I

    array-length v4, v3

    if-ge v7, v4, :cond_d

    aget v3, v3, v7

    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/u1;->w(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_d
    add-int/2addr v0, v1

    array-length v1, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->A:Lcom/google/android/gms/internal/clearcut/D1;

    if-eqz v1, :cond_f

    const/16 v2, 0x17

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/K;->L(ILcom/google/android/gms/internal/clearcut/B0;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->w:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/M1;->w:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/u1;->f(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->B:Z

    if-eqz v1, :cond_11

    const/16 v1, 0x19

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/u1;->v(I)I

    move-result v1

    add-int/2addr v1, v6

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->k:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/M1;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/u1;->f(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    return v0
.end method

.method public final hashCode()I
    .locals 8

    const-class v0, Lcom/google/android/gms/internal/clearcut/M1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->f:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->g:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->i:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->k:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    const/16 v1, 0x4d5

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/M1;->n:[Lcom/google/android/gms/internal/clearcut/N1;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/x1;->d([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/M1;->o:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/M1;->p:Lcom/google/android/gms/internal/clearcut/C1;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/a0;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/M1;->q:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/M1;->r:Ljava/lang/String;

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/M1;->s:Ljava/lang/String;

    if-nez v4, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_4
    add-int/2addr v0, v4

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/M1;->t:Ljava/lang/String;

    if-nez v4, :cond_5

    move v4, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_5
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/internal/clearcut/M1;->u:J

    ushr-long v6, v4, v3

    xor-long v3, v4, v6

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->v:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->w:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->y:[I

    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/x1;->c([I)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/M1;->A:Lcom/google/android/gms/internal/clearcut/D1;

    mul-int/lit16 v0, v0, 0x3c1

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/a0;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/clearcut/M1;->B:Z

    if-eqz v2, :cond_8

    const/16 v1, 0x4cf

    :cond_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final l()Lcom/google/android/gms/internal/clearcut/M1;
    .locals 4

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/w1;->k()Lcom/google/android/gms/internal/clearcut/w1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/M1;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->n:[Lcom/google/android/gms/internal/clearcut/N1;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/clearcut/N1;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/M1;->n:[Lcom/google/android/gms/internal/clearcut/N1;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/M1;->n:[Lcom/google/android/gms/internal/clearcut/N1;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->p:Lcom/google/android/gms/internal/clearcut/C1;

    if-eqz v1, :cond_1

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/M1;->p:Lcom/google/android/gms/internal/clearcut/C1;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->y:[I

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/M1;->y:[I

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/M1;->A:Lcom/google/android/gms/internal/clearcut/D1;

    if-eqz v1, :cond_3

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/M1;->A:Lcom/google/android/gms/internal/clearcut/D1;

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
