.class public final LO3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO3/d;
.implements LO3/c;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LO3/b$a;
    }
.end annotation


# instance fields
.field public e:LO3/u;

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(J)V
    .locals 2

    iget-wide v0, p0, LO3/b;->f:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public B()J
    .locals 15

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, LO3/b;->e:LO3/u;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v1, v0, LO3/u;->b:I

    iget v4, v0, LO3/u;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v5, v5, v2

    const/16 v6, 0x20

    if-gez v5, :cond_0

    invoke-virtual {p0}, LO3/b;->z()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    shl-long/2addr v0, v6

    invoke-virtual {p0}, LO3/b;->z()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_1

    :cond_0
    iget-object v5, v0, LO3/u;->a:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v8, v5, v1

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v12, 0x38

    shl-long/2addr v8, v12

    add-int/lit8 v12, v1, 0x2

    aget-byte v7, v5, v7

    int-to-long v13, v7

    and-long/2addr v13, v10

    const/16 v7, 0x30

    shl-long/2addr v13, v7

    or-long v7, v8, v13

    add-int/lit8 v9, v1, 0x3

    aget-byte v12, v5, v12

    int-to-long v12, v12

    and-long/2addr v12, v10

    const/16 v14, 0x28

    shl-long/2addr v12, v14

    or-long/2addr v7, v12

    add-int/lit8 v12, v1, 0x4

    aget-byte v9, v5, v9

    int-to-long v13, v9

    and-long/2addr v13, v10

    shl-long/2addr v13, v6

    or-long v6, v7, v13

    add-int/lit8 v8, v1, 0x5

    aget-byte v9, v5, v12

    int-to-long v12, v9

    and-long/2addr v12, v10

    const/16 v9, 0x18

    shl-long/2addr v12, v9

    or-long/2addr v6, v12

    add-int/lit8 v9, v1, 0x6

    aget-byte v8, v5, v8

    int-to-long v12, v8

    and-long/2addr v12, v10

    const/16 v8, 0x10

    shl-long/2addr v12, v8

    or-long/2addr v6, v12

    add-int/lit8 v8, v1, 0x7

    aget-byte v9, v5, v9

    int-to-long v12, v9

    and-long/2addr v12, v10

    const/16 v9, 0x8

    shl-long/2addr v12, v9

    or-long/2addr v6, v12

    add-int/2addr v1, v9

    aget-byte v5, v5, v8

    int-to-long v8, v5

    and-long/2addr v8, v10

    or-long v5, v6, v8

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {p0, v7, v8}, LO3/b;->F(J)V

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, LO3/u;->b()LO3/u;

    move-result-object v1

    iput-object v1, p0, LO3/b;->e:LO3/u;

    invoke-static {v0}, LO3/v;->b(LO3/u;)V

    goto :goto_0

    :cond_1
    iput v1, v0, LO3/u;->b:I

    :goto_0
    move-wide v0, v5

    :goto_1
    return-wide v0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public C()S
    .locals 9

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, LO3/b;->e:LO3/u;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v1, v0, LO3/u;->b:I

    iget v4, v0, LO3/u;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, LO3/b;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, LO3/b;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_1

    :cond_0
    iget-object v5, v0, LO3/u;->a:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v8, v5, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v1, v6

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v8

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {p0, v6, v7}, LO3/b;->F(J)V

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, LO3/u;->b()LO3/u;

    move-result-object v1

    iput-object v1, p0, LO3/b;->e:LO3/u;

    invoke-static {v0}, LO3/v;->b(LO3/u;)V

    goto :goto_0

    :cond_1
    iput v1, v0, LO3/u;->b:I

    :goto_0
    int-to-short v0, v5

    :goto_1
    return v0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public D(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    const-string v0, "charset"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    iget-wide v1, p0, LO3/b;->f:J

    cmp-long v1, v1, p1

    if-ltz v1, :cond_3

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, LO3/b;->e:LO3/u;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v1, v0, LO3/u;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, LO3/u;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, LO3/b;->t(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, LO3/u;->a:[B

    long-to-int v4, p1

    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, LO3/u;->b:I

    add-int/2addr p3, v4

    iput p3, v0, LO3/u;->b:I

    iget-wide v3, p0, LO3/b;->f:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, LO3/b;->f:J

    iget p1, v0, LO3/u;->c:I

    if-ne p3, p1, :cond_2

    invoke-virtual {v0}, LO3/u;->b()LO3/u;

    move-result-object p1

    iput-object p1, p0, LO3/b;->e:LO3/u;

    invoke-static {v0}, LO3/v;->b(LO3/u;)V

    :cond_2
    return-object v2

    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public E()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, LO3/b$c;

    invoke-direct {v0, p0}, LO3/b$c;-><init>(LO3/b;)V

    return-object v0
.end method

.method public final F(J)V
    .locals 0

    iput-wide p1, p0, LO3/b;->f:J

    return-void
.end method

.method public G()Ljava/io/InputStream;
    .locals 1

    new-instance v0, LO3/b$b;

    invoke-direct {v0, p0}, LO3/b$b;-><init>(LO3/b;)V

    return-object v0
.end method

.method public final H()J
    .locals 2

    iget-wide v0, p0, LO3/b;->f:J

    return-wide v0
.end method

.method public I(LO3/b;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_6

    invoke-virtual {p1}, LO3/b;->H()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, LO3/a;->b(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_5

    iget-object v0, p1, LO3/b;->e:LO3/u;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v0, v0, LO3/u;->c:I

    iget-object v1, p1, LO3/b;->e:LO3/u;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v1, v1, LO3/u;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_3

    iget-object v0, p0, LO3/b;->e:LO3/u;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v0, v0, LO3/u;->g:LO3/u;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v1, v0, LO3/u;->e:Z

    if-eqz v1, :cond_2

    iget v1, v0, LO3/u;->c:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, LO3/u;->d:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    iget v3, v0, LO3/u;->b:I

    :goto_2
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-object v1, p1, LO3/b;->e:LO3/u;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, LO3/u;->f(LO3/u;I)V

    invoke-virtual {p1}, LO3/b;->H()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, LO3/b;->F(J)V

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, v0, v1}, LO3/b;->F(J)V

    goto :goto_4

    :cond_2
    iget-object v0, p1, LO3/b;->e:LO3/u;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    long-to-int v1, p2

    invoke-virtual {v0, v1}, LO3/u;->e(I)LO3/u;

    move-result-object v0

    iput-object v0, p1, LO3/b;->e:LO3/u;

    :cond_3
    iget-object v0, p1, LO3/b;->e:LO3/u;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v1, v0, LO3/u;->c:I

    iget v2, v0, LO3/u;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0}, LO3/u;->b()LO3/u;

    move-result-object v3

    iput-object v3, p1, LO3/b;->e:LO3/u;

    iget-object v3, p0, LO3/b;->e:LO3/u;

    if-nez v3, :cond_4

    iput-object v0, p0, LO3/b;->e:LO3/u;

    iput-object v0, v0, LO3/u;->g:LO3/u;

    iput-object v0, v0, LO3/u;->f:LO3/u;

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v3, v3, LO3/u;->g:LO3/u;

    invoke-static {v3}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, LO3/u;->c(LO3/u;)LO3/u;

    move-result-object v0

    invoke-virtual {v0}, LO3/u;->a()V

    :goto_3
    invoke-virtual {p1}, LO3/b;->H()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, LO3/b;->F(J)V

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, LO3/b;->F(J)V

    sub-long/2addr p2, v1

    goto/16 :goto_0

    :cond_5
    :goto_4
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final J()LO3/e;
    .locals 4

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, LO3/b;->K(I)LO3/e;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size > Int.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final K(I)LO3/e;
    .locals 8

    if-nez p1, :cond_0

    sget-object p1, LO3/e;->i:LO3/e;

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, LO3/a;->b(JJJ)V

    iget-object v0, p0, LO3/b;->e:LO3/u;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v4, v0, LO3/u;->c:I

    iget v5, v0, LO3/u;->b:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, LO3/u;->f:LO3/u;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "s.limit == s.pos"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    new-array v2, v2, [I

    iget-object v4, p0, LO3/b;->e:LO3/u;

    move-object v5, v4

    move v4, v1

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-static {v5}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v6, v5, LO3/u;->a:[B

    aput-object v6, v0, v4

    iget v6, v5, LO3/u;->c:I

    iget v7, v5, LO3/u;->b:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v4

    add-int v6, v4, v3

    iget v7, v5, LO3/u;->b:I

    aput v7, v2, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, LO3/u;->d:Z

    add-int/2addr v4, v6

    iget-object v5, v5, LO3/u;->f:LO3/u;

    goto :goto_1

    :cond_3
    new-instance p1, LO3/w;

    invoke-direct {p1, v0, v2}, LO3/w;-><init>([[B[I)V

    :goto_2
    return-object p1
.end method

.method public final L(I)LO3/u;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    iget-object v1, p0, LO3/b;->e:LO3/u;

    if-nez v1, :cond_0

    invoke-static {}, LO3/v;->c()LO3/u;

    move-result-object p1

    iput-object p1, p0, LO3/b;->e:LO3/u;

    iput-object p1, p1, LO3/u;->g:LO3/u;

    iput-object p1, p1, LO3/u;->f:LO3/u;

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v1, v1, LO3/u;->g:LO3/u;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v2, v1, LO3/u;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_2

    iget-boolean p1, v1, LO3/u;->e:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, LO3/v;->c()LO3/u;

    move-result-object p1

    invoke-virtual {v1, p1}, LO3/u;->c(LO3/u;)LO3/u;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public M(LO3/e;)LO3/b;
    .locals 2

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LO3/e;->C()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, LO3/e;->H(LO3/b;II)V

    return-object p0
.end method

.method public N([BII)LO3/b;
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, LO3/a;->b(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LO3/b;->L(I)LO3/u;

    move-result-object v0

    sub-int v1, p3, p2

    iget v2, v0, LO3/u;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, LO3/u;->a:[B

    iget v3, v0, LO3/u;->c:I

    add-int v4, p2, v1

    invoke-static {p1, v2, v3, p2, v4}, Li3/k;->d([B[BIII)[B

    iget p2, v0, LO3/u;->c:I

    add-int/2addr p2, v1

    iput p2, v0, LO3/u;->c:I

    move p2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide p1

    add-long/2addr p1, v7

    invoke-virtual {p0, p1, p2}, LO3/b;->F(J)V

    return-object p0
.end method

.method public O(LO3/y;)J
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, LO3/y;->v(LO3/b;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public P(I)LO3/b;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LO3/b;->L(I)LO3/u;

    move-result-object v0

    iget-object v1, v0, LO3/u;->a:[B

    iget v2, v0, LO3/u;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, LO3/u;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, LO3/b;->F(J)V

    return-object p0
.end method

.method public Q(Ljava/lang/String;)LO3/b;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LO3/b;->R(Ljava/lang/String;II)LO3/b;

    move-result-object p1

    return-object p1
.end method

.method public R(Ljava/lang/String;II)LO3/b;
    .locals 9

    const-string v0, "string"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_a

    if-lt p3, p2, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_8

    :goto_0
    if-ge p2, p3, :cond_7

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, LO3/b;->L(I)LO3/u;

    move-result-object v2

    iget-object v3, v2, LO3/u;->a:[B

    iget v4, v2, LO3/u;->c:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p2

    :goto_1
    move p2, v6

    if-ge p2, v5, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v1, :cond_0

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p2

    goto :goto_1

    :cond_0
    add-int/2addr v4, p2

    iget v0, v2, LO3/u;->c:I

    sub-int/2addr v4, v0

    add-int/2addr v0, v4

    iput v0, v2, LO3/u;->c:I

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    int-to-long v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, LO3/b;->F(J)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x800

    if-ge v0, v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, LO3/b;->L(I)LO3/u;

    move-result-object v3

    iget-object v4, v3, LO3/u;->a:[B

    iget v5, v3, LO3/u;->c:I

    shr-int/lit8 v6, v0, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    add-int/2addr v5, v2

    iput v5, v3, LO3/u;->c:I

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, LO3/b;->F(J)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_6

    const v2, 0xdfff

    if-le v0, v2, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v2, p2, 0x1

    if-ge v2, p3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    const v5, 0xdbff

    if-gt v0, v5, :cond_5

    const v5, 0xdc00

    if-gt v5, v4, :cond_5

    const v5, 0xe000

    if-ge v4, v5, :cond_5

    and-int/lit16 v0, v0, 0x3ff

    shl-int/lit8 v0, v0, 0xa

    and-int/lit16 v2, v4, 0x3ff

    or-int/2addr v0, v2

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, LO3/b;->L(I)LO3/u;

    move-result-object v4

    iget-object v5, v4, LO3/u;->a:[B

    iget v6, v4, LO3/u;->c:I

    shr-int/lit8 v7, v0, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v0, 0xc

    and-int/2addr v8, v3

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v6, 0x2

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v8, v3

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v6, 0x3

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v7

    add-int/2addr v6, v2

    iput v6, v4, LO3/u;->c:I

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, LO3/b;->F(J)V

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v3}, LO3/b;->P(I)LO3/b;

    move p2, v2

    goto/16 :goto_0

    :cond_6
    :goto_4
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, LO3/b;->L(I)LO3/u;

    move-result-object v4

    iget-object v5, v4, LO3/u;->a:[B

    iget v6, v4, LO3/u;->c:I

    shr-int/lit8 v7, v0, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v3, v8

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v5, v7

    add-int/lit8 v3, v6, 0x2

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v3

    add-int/2addr v6, v2

    iput v6, v4, LO3/u;->c:I

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, LO3/b;->F(J)V

    goto/16 :goto_2

    :cond_7
    return-object p0

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex < 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(J)Ljava/lang/String;
    .locals 1

    sget-object v0, LC3/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, LO3/b;->D(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LO3/b;->skip(J)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LO3/b;->e()LO3/b;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public e()LO3/b;
    .locals 1

    invoke-virtual {p0}, LO3/b;->h()LO3/b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v3, v1, LO3/b;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    :goto_0
    move v2, v4

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, LO3/b;->H()J

    move-result-wide v5

    check-cast v1, LO3/b;

    invoke-virtual {v1}, LO3/b;->H()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, LO3/b;->H()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, v0, LO3/b;->e:LO3/u;

    invoke-static {v3}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v1, v1, LO3/b;->e:LO3/u;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v5, v3, LO3/u;->b:I

    iget v6, v1, LO3/u;->b:I

    move-wide v9, v7

    :goto_1
    invoke-virtual/range {p0 .. p0}, LO3/b;->H()J

    move-result-wide v11

    cmp-long v11, v9, v11

    if-gez v11, :cond_8

    iget v11, v3, LO3/u;->c:I

    sub-int/2addr v11, v5

    iget v12, v1, LO3/u;->c:I

    sub-int/2addr v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    move-wide v13, v7

    :goto_2
    cmp-long v15, v13, v11

    if-gez v15, :cond_5

    iget-object v15, v3, LO3/u;->a:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    iget-object v15, v1, LO3/u;->a:[B

    add-int/lit8 v17, v6, 0x1

    aget-byte v6, v15, v6

    if-eq v5, v6, :cond_4

    goto :goto_0

    :cond_4
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    move/from16 v5, v16

    move/from16 v6, v17

    goto :goto_2

    :cond_5
    iget v13, v3, LO3/u;->c:I

    if-ne v5, v13, :cond_6

    iget-object v3, v3, LO3/u;->f:LO3/u;

    invoke-static {v3}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v5, v3, LO3/u;->b:I

    :cond_6
    iget v13, v1, LO3/u;->c:I

    if-ne v6, v13, :cond_7

    iget-object v1, v1, LO3/u;->f:LO3/u;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v6, v1, LO3/u;->b:I

    :cond_7
    add-long/2addr v9, v11

    goto :goto_1

    :cond_8
    :goto_3
    return v2
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public final g()J
    .locals 5

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, LO3/b;->e:LO3/u;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v2, v2, LO3/u;->g:LO3/u;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v3, v2, LO3/u;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v4, v2, LO3/u;->e:Z

    if-eqz v4, :cond_1

    iget v2, v2, LO3/u;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public final h()LO3/b;
    .locals 6

    new-instance v0, LO3/b;

    invoke-direct {v0}, LO3/b;-><init>()V

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, LO3/b;->e:LO3/u;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, LO3/u;->d()LO3/u;

    move-result-object v2

    iput-object v2, v0, LO3/b;->e:LO3/u;

    iput-object v2, v2, LO3/u;->g:LO3/u;

    iput-object v2, v2, LO3/u;->f:LO3/u;

    iget-object v3, v1, LO3/u;->f:LO3/u;

    :goto_0
    if-eq v3, v1, :cond_1

    iget-object v4, v2, LO3/u;->g:LO3/u;

    invoke-static {v4}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-static {v3}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, LO3/u;->d()LO3/u;

    move-result-object v5

    invoke-virtual {v4, v5}, LO3/u;->c(LO3/u;)LO3/u;

    iget-object v3, v3, LO3/u;->f:LO3/u;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LO3/b;->F(J)V

    :goto_1
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, LO3/b;->e:LO3/u;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget v2, v0, LO3/u;->b:I

    iget v3, v0, LO3/u;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, LO3/u;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, LO3/u;->f:LO3/u;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v2, p0, LO3/b;->e:LO3/u;

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_1
    return v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k(J)B
    .locals 6

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, LO3/a;->b(JJJ)V

    iget-object v0, p0, LO3/b;->e:LO3/u;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v1

    sub-long/2addr v1, p1

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v1

    :goto_0
    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    iget-object v0, v0, LO3/u;->g:LO3/u;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v3, v0, LO3/u;->c:I

    iget v4, v0, LO3/u;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v3, v0, LO3/u;->a:[B

    iget v0, v0, LO3/u;->b:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    iget v3, v0, LO3/u;->c:I

    iget v4, v0, LO3/u;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    cmp-long v5, v3, p1

    if-gtz v5, :cond_2

    iget-object v0, v0, LO3/u;->f:LO3/u;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v3, v0, LO3/u;->a:[B

    iget v0, v0, LO3/u;->b:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    :goto_2
    return p1

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1}, Lv3/l;->b(Ljava/lang/Object;)V

    throw p1
.end method

.method public l(LO3/e;)J
    .locals 2

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, LO3/b;->m(LO3/e;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public m(LO3/e;J)J
    .locals 11

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_12

    iget-object v2, p0, LO3/b;->e:LO3/u;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    goto/16 :goto_f

    :cond_0
    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v5

    sub-long/2addr v5, p2

    cmp-long v5, v5, p2

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v5, :cond_9

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    :goto_0
    cmp-long v5, v0, p2

    if-lez v5, :cond_1

    iget-object v2, v2, LO3/u;->g:LO3/u;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v5, v2, LO3/u;->c:I

    iget v9, v2, LO3/u;->b:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    sub-long/2addr v0, v9

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LO3/e;->C()I

    move-result v5

    if-ne v5, v6, :cond_5

    invoke-virtual {p1, v7}, LO3/e;->k(I)B

    move-result v5

    invoke-virtual {p1, v8}, LO3/e;->k(I)B

    move-result p1

    :goto_1
    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_11

    iget-object v6, v2, LO3/u;->a:[B

    iget v7, v2, LO3/u;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    iget p3, v2, LO3/u;->c:I

    :goto_2
    if-ge p2, p3, :cond_4

    aget-byte v7, v6, p2

    if-eq v7, v5, :cond_3

    if-ne v7, p1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget p1, v2, LO3/u;->b:I

    :goto_4
    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long v3, p1, v0

    goto/16 :goto_f

    :cond_4
    iget p2, v2, LO3/u;->c:I

    iget p3, v2, LO3/u;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v2, v2, LO3/u;->f:LO3/u;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, LO3/e;->t()[B

    move-result-object p1

    :goto_5
    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_11

    iget-object v5, v2, LO3/u;->a:[B

    iget v6, v2, LO3/u;->b:I

    int-to-long v8, v6

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int p2, v8

    iget p3, v2, LO3/u;->c:I

    :goto_6
    if-ge p2, p3, :cond_8

    aget-byte v6, v5, p2

    array-length v8, p1

    move v9, v7

    :goto_7
    if-ge v9, v8, :cond_7

    aget-byte v10, p1, v9

    if-ne v6, v10, :cond_6

    :goto_8
    iget p1, v2, LO3/u;->b:I

    goto :goto_4

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_8
    iget p2, v2, LO3/u;->c:I

    iget p3, v2, LO3/u;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v2, v2, LO3/u;->f:LO3/u;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_5

    :cond_9
    :goto_9
    iget v5, v2, LO3/u;->c:I

    iget v9, v2, LO3/u;->b:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    add-long/2addr v9, v0

    cmp-long v5, v9, p2

    if-gtz v5, :cond_a

    iget-object v2, v2, LO3/u;->f:LO3/u;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    move-wide v0, v9

    goto :goto_9

    :cond_a
    invoke-virtual {p1}, LO3/e;->C()I

    move-result v5

    if-ne v5, v6, :cond_d

    invoke-virtual {p1, v7}, LO3/e;->k(I)B

    move-result v5

    invoke-virtual {p1, v8}, LO3/e;->k(I)B

    move-result p1

    :goto_a
    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_11

    iget-object v6, v2, LO3/u;->a:[B

    iget v7, v2, LO3/u;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    iget p3, v2, LO3/u;->c:I

    :goto_b
    if-ge p2, p3, :cond_c

    aget-byte v7, v6, p2

    if-eq v7, v5, :cond_3

    if-ne v7, p1, :cond_b

    goto/16 :goto_3

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_c
    iget p2, v2, LO3/u;->c:I

    iget p3, v2, LO3/u;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v2, v2, LO3/u;->f:LO3/u;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_a

    :cond_d
    invoke-virtual {p1}, LO3/e;->t()[B

    move-result-object p1

    :goto_c
    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_11

    iget-object v5, v2, LO3/u;->a:[B

    iget v6, v2, LO3/u;->b:I

    int-to-long v8, v6

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int p2, v8

    iget p3, v2, LO3/u;->c:I

    :goto_d
    if-ge p2, p3, :cond_10

    aget-byte v6, v5, p2

    array-length v8, p1

    move v9, v7

    :goto_e
    if-ge v9, v8, :cond_f

    aget-byte v10, p1, v9

    if-ne v6, v10, :cond_e

    goto/16 :goto_8

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_10
    iget p2, v2, LO3/u;->c:I

    iget p3, v2, LO3/u;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v2, v2, LO3/u;->f:LO3/u;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_c

    :cond_11
    :goto_f
    return-wide v3

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fromIndex < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public n()I
    .locals 1

    invoke-virtual {p0}, LO3/b;->z()I

    move-result v0

    invoke-static {v0}, LO3/a;->e(I)I

    move-result v0

    return v0
.end method

.method public o()LO3/b;
    .locals 0

    return-object p0
.end method

.method public p()Z
    .locals 4

    iget-wide v0, p0, LO3/b;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()S
    .locals 1

    invoke-virtual {p0}, LO3/b;->C()S

    move-result v0

    invoke-static {v0}, LO3/a;->g(S)S

    move-result v0

    return v0
.end method

.method public r(JLO3/e;)Z
    .locals 7

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, LO3/e;->C()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, LO3/b;->s(JLO3/e;II)Z

    move-result p1

    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, LO3/b;->e:LO3/u;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, LO3/u;->c:I

    iget v3, v0, LO3/u;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, v0, LO3/u;->a:[B

    iget v3, v0, LO3/u;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 4
    iget p1, v0, LO3/u;->b:I

    add-int/2addr p1, v1

    iput p1, v0, LO3/u;->b:I

    .line 5
    iget-wide v2, p0, LO3/b;->f:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, LO3/b;->f:J

    .line 6
    iget v2, v0, LO3/u;->c:I

    if-ne p1, v2, :cond_1

    .line 7
    invoke-virtual {v0}, LO3/u;->b()LO3/u;

    move-result-object p1

    iput-object p1, p0, LO3/b;->e:LO3/u;

    .line 8
    invoke-static {v0}, LO3/v;->b(LO3/u;)V

    :cond_1
    return v1
.end method

.method public read([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, LO3/a;->b(JJJ)V

    .line 10
    iget-object v0, p0, LO3/b;->e:LO3/u;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 11
    :cond_0
    iget v1, v0, LO3/u;->c:I

    iget v2, v0, LO3/u;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 12
    iget-object v1, v0, LO3/u;->a:[B

    .line 13
    iget v2, v0, LO3/u;->b:I

    add-int v3, v2, p3

    .line 14
    invoke-static {v1, p1, p2, v2, v3}, Li3/k;->d([B[BIII)[B

    .line 15
    iget p1, v0, LO3/u;->b:I

    add-int/2addr p1, p3

    iput p1, v0, LO3/u;->b:I

    .line 16
    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide p1

    int-to-long v1, p3

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, LO3/b;->F(J)V

    .line 17
    iget p1, v0, LO3/u;->b:I

    iget p2, v0, LO3/u;->c:I

    if-ne p1, p2, :cond_1

    .line 18
    invoke-virtual {v0}, LO3/u;->b()LO3/u;

    move-result-object p1

    iput-object p1, p0, LO3/b;->e:LO3/u;

    .line 19
    invoke-static {v0}, LO3/v;->b(LO3/u;)V

    :cond_1
    move p1, p3

    :goto_0
    return p1
.end method

.method public readByte()B
    .locals 9

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, LO3/b;->e:LO3/u;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v1, v0, LO3/u;->b:I

    iget v2, v0, LO3/u;->c:I

    iget-object v3, v0, LO3/u;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, LO3/b;->F(J)V

    if-ne v4, v2, :cond_0

    invoke-virtual {v0}, LO3/u;->b()LO3/u;

    move-result-object v2

    iput-object v2, p0, LO3/b;->e:LO3/u;

    invoke-static {v0}, LO3/v;->b(LO3/u;)V

    goto :goto_0

    :cond_0
    iput v4, v0, LO3/u;->b:I

    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public s(JLO3/e;II)Z
    .locals 6

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v2

    sub-long/2addr v2, p1

    int-to-long v4, p5

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    invoke-virtual {p3}, LO3/e;->C()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p5, :cond_2

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, LO3/b;->k(J)B

    move-result v2

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, LO3/e;->k(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method public skip(J)V
    .locals 6

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, LO3/b;->e:LO3/u;

    if-eqz v0, :cond_1

    iget v1, v0, LO3/u;->c:I

    iget v2, v0, LO3/u;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v2

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, LO3/b;->F(J)V

    sub-long/2addr p1, v4

    iget v2, v0, LO3/u;->b:I

    add-int/2addr v2, v1

    iput v2, v0, LO3/u;->b:I

    iget v1, v0, LO3/u;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, LO3/u;->b()LO3/u;

    move-result-object v1

    iput-object v1, p0, LO3/b;->e:LO3/u;

    invoke-static {v0}, LO3/v;->b(LO3/u;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public t(J)[B
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    long-to-int p1, p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, LO3/b;->y([B)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LO3/b;->J()LO3/e;

    move-result-object v0

    invoke-virtual {v0}, LO3/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()J
    .locals 2

    invoke-virtual {p0}, LO3/b;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, LO3/a;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public v(LO3/b;J)J
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide p2

    :cond_1
    invoke-virtual {p1, p0, p2, p3}, LO3/b;->I(LO3/b;J)V

    move-wide p1, p2

    :goto_0
    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public w()LO3/e;
    .locals 2

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LO3/b;->x(J)LO3/e;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, LO3/b;->L(I)LO3/u;

    move-result-object v2

    iget v3, v2, LO3/u;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, LO3/u;->a:[B

    iget v5, v2, LO3/u;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, LO3/u;->c:I

    add-int/2addr v4, v3

    iput v4, v2, LO3/u;->c:I

    goto :goto_0

    :cond_0
    iget-wide v1, p0, LO3/b;->f:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, LO3/b;->f:J

    return v0
.end method

.method public x(J)LO3/e;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, LO3/b;->K(I)LO3/e;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, LO3/b;->skip(J)V

    goto :goto_0

    :cond_0
    new-instance v0, LO3/e;

    invoke-virtual {p0, p1, p2}, LO3/b;->t(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, LO3/e;-><init>([B)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public y([B)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, LO3/b;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public z()I
    .locals 9

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, LO3/b;->e:LO3/u;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v1, v0, LO3/u;->b:I

    iget v4, v0, LO3/u;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_0

    invoke-virtual {p0}, LO3/b;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, LO3/b;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, LO3/b;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, LO3/b;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_1

    :cond_0
    iget-object v5, v0, LO3/u;->a:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v7, v5, v1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, v1, 0x2

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, 0x3

    aget-byte v8, v5, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    add-int/lit8 v1, v1, 0x4

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    invoke-virtual {p0}, LO3/b;->H()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {p0, v6, v7}, LO3/b;->F(J)V

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, LO3/u;->b()LO3/u;

    move-result-object v1

    iput-object v1, p0, LO3/b;->e:LO3/u;

    invoke-static {v0}, LO3/v;->b(LO3/u;)V

    goto :goto_0

    :cond_1
    iput v1, v0, LO3/u;->b:I

    :goto_0
    move v0, v5

    :goto_1
    return v0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method
