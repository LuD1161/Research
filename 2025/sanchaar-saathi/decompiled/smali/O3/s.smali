.class public final LO3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO3/c;


# instance fields
.field public final e:LO3/x;

.field public final f:LO3/b;

.field public g:Z


# direct methods
.method public constructor <init>(LO3/x;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO3/s;->e:LO3/x;

    new-instance p1, LO3/b;

    invoke-direct {p1}, LO3/b;-><init>()V

    iput-object p1, p0, LO3/s;->f:LO3/b;

    return-void
.end method


# virtual methods
.method public E()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, LO3/s$a;

    invoke-direct {v0, p0}, LO3/s$a;-><init>(LO3/s;)V

    return-object v0
.end method

.method public I(LO3/b;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LO3/s;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LO3/s;->f:LO3/b;

    invoke-virtual {v0, p1, p2, p3}, LO3/b;->I(LO3/b;J)V

    invoke-virtual {p0}, LO3/s;->b()LO3/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()LO3/c;
    .locals 4

    iget-boolean v0, p0, LO3/s;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LO3/s;->f:LO3/b;

    invoke-virtual {v0}, LO3/b;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, LO3/s;->e:LO3/x;

    iget-object v3, p0, LO3/s;->f:LO3/b;

    invoke-interface {v2, v3, v0, v1}, LO3/x;->I(LO3/b;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 4

    iget-boolean v0, p0, LO3/s;->g:Z

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, LO3/s;->f:LO3/b;

    invoke-virtual {v0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, LO3/s;->e:LO3/x;

    iget-object v1, p0, LO3/s;->f:LO3/b;

    invoke-virtual {v1}, LO3/b;->H()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, LO3/x;->I(LO3/b;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    iget-object v1, p0, LO3/s;->e:LO3/x;

    invoke-interface {v1}, LO3/x;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, LO3/s;->g:Z

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    throw v0

    :cond_3
    :goto_3
    return-void
.end method

.method public flush()V
    .locals 4

    iget-boolean v0, p0, LO3/s;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LO3/s;->f:LO3/b;

    invoke-virtual {v0}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, LO3/s;->e:LO3/x;

    iget-object v1, p0, LO3/s;->f:LO3/b;

    invoke-virtual {v1}, LO3/b;->H()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, LO3/x;->I(LO3/b;J)V

    :cond_0
    iget-object v0, p0, LO3/s;->e:LO3/x;

    invoke-interface {v0}, LO3/x;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, LO3/s;->g:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LO3/s;->e:LO3/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LO3/s;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LO3/s;->f:LO3/b;

    invoke-virtual {v0, p1}, LO3/b;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, LO3/s;->b()LO3/c;

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
