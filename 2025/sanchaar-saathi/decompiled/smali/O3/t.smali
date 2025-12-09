.class public final LO3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO3/d;


# instance fields
.field public final e:LO3/y;

.field public final f:LO3/b;

.field public g:Z


# direct methods
.method public constructor <init>(LO3/y;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO3/t;->e:LO3/y;

    new-instance p1, LO3/b;

    invoke-direct {p1}, LO3/b;-><init>()V

    iput-object p1, p0, LO3/t;->f:LO3/b;

    return-void
.end method


# virtual methods
.method public A(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LO3/t;->b(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public G()Ljava/io/InputStream;
    .locals 1

    new-instance v0, LO3/t$a;

    invoke-direct {v0, p0}, LO3/t$a;-><init>(LO3/t;)V

    return-object v0
.end method

.method public a(J)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, LO3/t;->A(J)V

    iget-object v0, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v0, p1, p2}, LO3/b;->a(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, LO3/t;->g:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v0}, LO3/b;->H()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    iget-object v0, p0, LO3/t;->e:LO3/y;

    iget-object v1, p0, LO3/t;->f:LO3/b;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, LO3/y;->v(LO3/b;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

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

.method public close()V
    .locals 1

    iget-boolean v0, p0, LO3/t;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LO3/t;->g:Z

    iget-object v0, p0, LO3/t;->e:LO3/y;

    invoke-interface {v0}, LO3/y;->close()V

    iget-object v0, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v0}, LO3/b;->b()V

    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, LO3/t;->g:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public n()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, LO3/t;->A(J)V

    iget-object v0, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v0}, LO3/b;->n()I

    move-result v0

    return v0
.end method

.method public o()LO3/b;
    .locals 1

    iget-object v0, p0, LO3/t;->f:LO3/b;

    return-object v0
.end method

.method public p()Z
    .locals 4

    iget-boolean v0, p0, LO3/t;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v0}, LO3/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO3/t;->e:LO3/y;

    iget-object v1, p0, LO3/t;->f:LO3/b;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, LO3/y;->v(LO3/b;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, LO3/t;->A(J)V

    iget-object v0, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v0}, LO3/b;->q()S

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, LO3/t;->e:LO3/y;

    iget-object v1, p0, LO3/t;->f:LO3/b;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, LO3/y;->v(LO3/b;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v0, p1}, LO3/b;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, LO3/t;->A(J)V

    iget-object v0, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v0}, LO3/b;->readByte()B

    move-result v0

    return v0
.end method

.method public skip(J)V
    .locals 4

    iget-boolean v0, p0, LO3/t;->g:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v2}, LO3/b;->H()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, LO3/t;->e:LO3/y;

    iget-object v1, p0, LO3/t;->f:LO3/b;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, LO3/y;->v(LO3/b;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    :goto_1
    iget-object v0, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v0}, LO3/b;->H()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v2, v0, v1}, LO3/b;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LO3/t;->e:LO3/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()J
    .locals 2

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, LO3/t;->A(J)V

    iget-object v0, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v0}, LO3/b;->u()J

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

    iget-boolean v2, p0, LO3/t;->g:Z

    if-nez v2, :cond_1

    iget-object v2, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v2}, LO3/b;->H()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, LO3/t;->e:LO3/y;

    iget-object v1, p0, LO3/t;->f:LO3/b;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, LO3/y;->v(LO3/b;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v0}, LO3/b;->H()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v0, p0, LO3/t;->f:LO3/b;

    invoke-virtual {v0, p1, p2, p3}, LO3/b;->v(LO3/b;J)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

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
