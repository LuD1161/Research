.class public abstract LO3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LO3/f$b;,
        LO3/f$a;
    }
.end annotation


# instance fields
.field public final e:Z

.field public f:Z

.field public g:I

.field public final h:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LO3/f;->e:Z

    invoke-static {}, LO3/B;->b()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    iput-object p1, p0, LO3/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static final synthetic b(LO3/f;)Z
    .locals 0

    iget-boolean p0, p0, LO3/f;->f:Z

    return p0
.end method

.method public static final synthetic c(LO3/f;)I
    .locals 0

    iget p0, p0, LO3/f;->g:I

    return p0
.end method

.method public static final synthetic d(LO3/f;JLO3/b;J)J
    .locals 0

    invoke-virtual/range {p0 .. p5}, LO3/f;->m(JLO3/b;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic e(LO3/f;I)V
    .locals 0

    iput p1, p0, LO3/f;->g:I

    return-void
.end method

.method public static final synthetic f(LO3/f;JLO3/b;J)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, LO3/f;->x(JLO3/b;J)V

    return-void
.end method

.method public static synthetic s(LO3/f;JILjava/lang/Object;)LO3/x;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, LO3/f;->r(J)LO3/x;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sink"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, LO3/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, LO3/f;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, LO3/f;->f:Z

    iget v1, p0, LO3/f;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_2
    sget-object v1, Lh3/n;->a:Lh3/n;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, LO3/f;->h()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final flush()V
    .locals 3

    iget-boolean v0, p0, LO3/f;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LO3/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, LO3/f;->f:Z

    if-nez v1, :cond_0

    sget-object v1, Lh3/n;->a:Lh3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, LO3/f;->i()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "file handle is read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, LO3/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j(J[BII)I
.end method

.method public abstract k()J
.end method

.method public abstract l(J[BII)V
.end method

.method public final m(JLO3/b;J)J
    .locals 14

    move-object/from16 v0, p3

    move-wide/from16 v1, p4

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_3

    add-long/2addr v1, p1

    move-wide v9, p1

    :goto_0
    cmp-long v3, v9, v1

    if-gez v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, LO3/b;->L(I)LO3/u;

    move-result-object v11

    iget-object v6, v11, LO3/u;->a:[B

    iget v7, v11, LO3/u;->c:I

    sub-long v3, v1, v9

    rsub-int v5, v7, 0x2000

    int-to-long v12, v5

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v8, v3

    move-object v3, p0

    move-wide v4, v9

    invoke-virtual/range {v3 .. v8}, LO3/f;->j(J[BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget v1, v11, LO3/u;->b:I

    iget v2, v11, LO3/u;->c:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v11}, LO3/u;->b()LO3/u;

    move-result-object v1

    iput-object v1, v0, LO3/b;->e:LO3/u;

    invoke-static {v11}, LO3/v;->b(LO3/u;)V

    :cond_0
    cmp-long v0, p1, v9

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    iget v4, v11, LO3/u;->c:I

    add-int/2addr v4, v3

    iput v4, v11, LO3/u;->c:I

    int-to-long v3, v3

    add-long/2addr v9, v3

    invoke-virtual/range {p3 .. p3}, LO3/b;->H()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, LO3/b;->F(J)V

    goto :goto_0

    :cond_2
    sub-long/2addr v9, p1

    return-wide v9

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount < 0: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final r(J)LO3/x;
    .locals 2

    iget-boolean v0, p0, LO3/f;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LO3/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, LO3/f;->f:Z

    if-nez v1, :cond_0

    iget v1, p0, LO3/f;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LO3/f;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v0, LO3/f$a;

    invoke-direct {v0, p0, p1, p2}, LO3/f$a;-><init>(LO3/f;J)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p1, "closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "file handle is read-only"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t()J
    .locals 3

    iget-object v0, p0, LO3/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, LO3/f;->f:Z

    if-nez v1, :cond_0

    sget-object v1, Lh3/n;->a:Lh3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, LO3/f;->k()J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final w(J)LO3/y;
    .locals 2

    iget-object v0, p0, LO3/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, LO3/f;->f:Z

    if-nez v1, :cond_0

    iget v1, p0, LO3/f;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LO3/f;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v0, LO3/f$b;

    invoke-direct {v0, p0, p1, p2}, LO3/f$b;-><init>(LO3/f;J)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p1, "closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final x(JLO3/b;J)V
    .locals 8

    invoke-virtual {p3}, LO3/b;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, LO3/a;->b(JJJ)V

    add-long/2addr p4, p1

    :cond_0
    :goto_0
    cmp-long v0, p1, p4

    if-gez v0, :cond_1

    iget-object v6, p3, LO3/b;->e:LO3/u;

    invoke-static {v6}, Lv3/l;->b(Ljava/lang/Object;)V

    sub-long v0, p4, p1

    iget v2, v6, LO3/u;->c:I

    iget v3, v6, LO3/u;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    iget-object v3, v6, LO3/u;->a:[B

    iget v4, v6, LO3/u;->b:I

    move-object v0, p0

    move-wide v1, p1

    move v5, v7

    invoke-virtual/range {v0 .. v5}, LO3/f;->l(J[BII)V

    iget v0, v6, LO3/u;->b:I

    add-int/2addr v0, v7

    iput v0, v6, LO3/u;->b:I

    int-to-long v0, v7

    add-long/2addr p1, v0

    invoke-virtual {p3}, LO3/b;->H()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p3, v2, v3}, LO3/b;->F(J)V

    iget v0, v6, LO3/u;->b:I

    iget v1, v6, LO3/u;->c:I

    if-ne v0, v1, :cond_0

    invoke-virtual {v6}, LO3/u;->b()LO3/u;

    move-result-object v0

    iput-object v0, p3, LO3/b;->e:LO3/u;

    invoke-static {v6}, LO3/v;->b(LO3/u;)V

    goto :goto_0

    :cond_1
    return-void
.end method
