.class public final LO3/w;
.super LO3/e;
.source "SourceFile"


# instance fields
.field public final transient j:[[B

.field public final transient k:[I


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    const-string v0, "segments"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LO3/e;->i:LO3/e;

    invoke-virtual {v0}, LO3/e;->l()[B

    move-result-object v0

    invoke-direct {p0, v0}, LO3/e;-><init>([B)V

    iput-object p1, p0, LO3/w;->j:[[B

    iput-object p2, p0, LO3/w;->k:[I

    return-void
.end method


# virtual methods
.method public E(II)LO3/e;
    .locals 10

    invoke-static {p0, p2}, LO3/a;->d(LO3/e;I)I

    move-result p2

    if-ltz p1, :cond_6

    invoke-virtual {p0}, LO3/e;->C()I

    move-result v0

    const-string v1, "endIndex="

    if-gt p2, v0, :cond_5

    sub-int v0, p2, p1

    if-ltz v0, :cond_4

    if-nez p1, :cond_0

    invoke-virtual {p0}, LO3/e;->C()I

    move-result v1

    if-ne p2, v1, :cond_0

    move-object p1, p0

    goto :goto_2

    :cond_0
    if-ne p1, p2, :cond_1

    sget-object p1, LO3/e;->i:LO3/e;

    goto :goto_2

    :cond_1
    invoke-static {p0, p1}, LP3/d;->b(LO3/w;I)I

    move-result v1

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p2}, LP3/d;->b(LO3/w;I)I

    move-result p2

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, v1, v3}, Li3/k;->i([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    if-gt v1, p2, :cond_2

    move v6, v1

    move v5, v4

    :goto_0
    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v7

    aget v7, v7, v6

    sub-int/2addr v7, p1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v3, v5

    add-int/lit8 v7, v5, 0x1

    array-length v8, v2

    add-int/2addr v5, v8

    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v8

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v9, v6

    aget v8, v8, v9

    aput v8, v3, v5

    if-eq v6, p2, :cond_2

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object p2

    add-int/lit8 v1, v1, -0x1

    aget v4, p2, v1

    :goto_1
    array-length p2, v2

    aget v0, v3, p2

    sub-int/2addr p1, v4

    add-int/2addr v0, p1

    aput v0, v3, p2

    new-instance p1, LO3/w;

    invoke-direct {p1, v2, v3}, LO3/w;-><init>([[B[I)V

    :goto_2
    return-object p1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < beginIndex="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > length("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LO3/e;->C()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginIndex="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public H(LO3/b;II)V
    .locals 11

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int v0, p2, p3

    invoke-static {p0, p2}, LP3/d;->b(LO3/w;I)I

    move-result v1

    :goto_0
    if-ge p2, v0, :cond_2

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    :goto_1
    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v3

    aget v3, v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v4

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    aget v4, v4, v5

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, p2

    sub-int v2, p2, v2

    add-int v7, v4, v2

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v2

    aget-object v6, v2, v1

    new-instance v2, LO3/u;

    add-int v8, v7, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, LO3/u;-><init>([BIIZZ)V

    iget-object v4, p1, LO3/b;->e:LO3/u;

    if-nez v4, :cond_1

    iput-object v2, v2, LO3/u;->g:LO3/u;

    iput-object v2, v2, LO3/u;->f:LO3/u;

    iput-object v2, p1, LO3/b;->e:LO3/u;

    goto :goto_2

    :cond_1
    invoke-static {v4}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v4, v4, LO3/u;->g:LO3/u;

    invoke-static {v4}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, LO3/u;->c(LO3/u;)LO3/u;

    :goto_2
    add-int/2addr p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LO3/b;->H()J

    move-result-wide v0

    int-to-long p2, p3

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, LO3/b;->F(J)V

    return-void
.end method

.method public final I()[I
    .locals 1

    iget-object v0, p0, LO3/w;->k:[I

    return-object v0
.end method

.method public final J()[[B
    .locals 1

    iget-object v0, p0, LO3/w;->j:[[B

    return-object v0
.end method

.method public K()[B
    .locals 9

    invoke-virtual {p0}, LO3/e;->C()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v5

    add-int v6, v1, v2

    aget v5, v5, v6

    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v6

    aget v6, v6, v2

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v7

    aget-object v7, v7, v2

    sub-int v3, v6, v3

    add-int v8, v5, v3

    invoke-static {v7, v0, v4, v5, v8}, Li3/k;->d([B[BIII)[B

    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final L()LO3/e;
    .locals 2

    new-instance v0, LO3/e;

    invoke-virtual {p0}, LO3/w;->K()[B

    move-result-object v1

    invoke-direct {v0, v1}, LO3/e;-><init>([B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, LO3/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, LO3/e;

    invoke-virtual {p1}, LO3/e;->C()I

    move-result v1

    invoke-virtual {p0}, LO3/e;->C()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, LO3/e;->C()I

    move-result v1

    invoke-virtual {p0, v2, p1, v2, v1}, LO3/w;->y(ILO3/e;II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 8

    invoke-virtual {p0}, LO3/e;->m()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v4

    add-int v5, v0, v1

    aget v4, v4, v5

    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v5

    aget v5, v5, v1

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v6

    aget-object v6, v6, v1

    sub-int v3, v5, v3

    add-int/2addr v3, v4

    :goto_1
    if-ge v4, v3, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    aget-byte v7, v6, v4

    add-int/2addr v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, LO3/e;->A(I)V

    move v0, v2

    :goto_2
    return v0
.end method

.method public n()I
    .locals 2

    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v0

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LO3/w;->L()LO3/e;

    move-result-object v0

    invoke-virtual {v0}, LO3/e;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r([BI)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LO3/w;->L()LO3/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LO3/e;->r([BI)I

    move-result p1

    return p1
.end method

.method public t()[B
    .locals 1

    invoke-virtual {p0}, LO3/w;->K()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LO3/w;->L()LO3/e;

    move-result-object v0

    invoke-virtual {v0}, LO3/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(I)B
    .locals 7

    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v0

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, LO3/a;->b(JJJ)V

    invoke-static {p0, p1}, LP3/d;->b(LO3/w;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    :goto_0
    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v2

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v3, v0

    aget v2, v2, v3

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v3

    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public w([BI)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LO3/w;->L()LO3/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LO3/e;->w([BI)I

    move-result p1

    return p1
.end method

.method public y(ILO3/e;II)Z
    .locals 6

    const-string v0, "other"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, LO3/e;->C()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p1, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p4, p1

    invoke-static {p0, p1}, LP3/d;->b(LO3/w;I)I

    move-result v1

    :goto_0
    if-ge p1, p4, :cond_3

    if-nez v1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    :goto_1
    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v3

    aget v3, v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v4

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    aget v4, v4, v5

    add-int/2addr v3, v2

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, p1

    sub-int v2, p1, v2

    add-int/2addr v4, v2

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p2, p3, v2, v4, v3}, LO3/e;->z(I[BII)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p3, v3

    add-int/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0
.end method

.method public z(I[BII)Z
    .locals 6

    const-string v0, "other"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, LO3/e;->C()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_4

    if-ltz p3, :cond_4

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p4, p1

    invoke-static {p0, p1}, LP3/d;->b(LO3/w;I)I

    move-result v1

    :goto_0
    if-ge p1, p4, :cond_3

    if-nez v1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    :goto_1
    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v3

    aget v3, v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {p0}, LO3/w;->I()[I

    move-result-object v4

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    aget v4, v4, v5

    add-int/2addr v3, v2

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, p1

    sub-int v2, p1, v2

    add-int/2addr v4, v2

    invoke-virtual {p0}, LO3/w;->J()[[B

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2, v4, p2, p3, v3}, LO3/a;->a([BI[BII)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p3, v3

    add-int/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0
.end method
