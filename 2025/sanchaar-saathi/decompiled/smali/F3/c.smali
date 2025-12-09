.class public abstract LF3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LF3/j;

.field public static final b:I

.field public static final c:I

.field public static final d:LI3/F;

.field public static final e:LI3/F;

.field public static final f:LI3/F;

.field public static final g:LI3/F;

.field public static final h:LI3/F;

.field public static final i:LI3/F;

.field public static final j:LI3/F;

.field public static final k:LI3/F;

.field public static final l:LI3/F;

.field public static final m:LI3/F;

.field public static final n:LI3/F;

.field public static final o:LI3/F;

.field public static final p:LI3/F;

.field public static final q:LI3/F;

.field public static final r:LI3/F;

.field public static final s:LI3/F;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, LF3/j;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LF3/j;-><init>(JLF3/j;LF3/b;I)V

    sput-object v6, LF3/c;->a:LF3/j;

    const/16 v11, 0xc

    const/4 v12, 0x0

    const-string v7, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, LI3/G;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, LF3/c;->b:I

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, LI3/G;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, LF3/c;->c:I

    new-instance v0, LI3/F;

    const-string v1, "BUFFERED"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->d:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->e:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->f:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->g:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "POISONED"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->h:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->i:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->j:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->k:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->l:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->m:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->n:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->o:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->p:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->q:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->r:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LF3/c;->s:LI3/F;

    return-void
.end method

.method public static final A(I)J
    .locals 2

    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    int-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static final B(LD3/l;Ljava/lang/Object;Lu3/l;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, LD3/l;->u(Ljava/lang/Object;Ljava/lang/Object;Lu3/l;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, LD3/l;->K(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic C(LD3/l;Ljava/lang/Object;Lu3/l;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, LF3/c;->B(LD3/l;Ljava/lang/Object;Lu3/l;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(JZ)J
    .locals 0

    invoke-static {p0, p1, p2}, LF3/c;->v(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, LF3/c;->w(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic c(JLF3/j;)LF3/j;
    .locals 0

    invoke-static {p0, p1, p2}, LF3/c;->x(JLF3/j;)LF3/j;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->q:LI3/F;

    return-object v0
.end method

.method public static final synthetic e()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->r:LI3/F;

    return-object v0
.end method

.method public static final synthetic f()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->i:LI3/F;

    return-object v0
.end method

.method public static final synthetic g()I
    .locals 1

    sget v0, LF3/c;->c:I

    return v0
.end method

.method public static final synthetic h()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->o:LI3/F;

    return-object v0
.end method

.method public static final synthetic i()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->k:LI3/F;

    return-object v0
.end method

.method public static final synthetic j()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->j:LI3/F;

    return-object v0
.end method

.method public static final synthetic k()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->e:LI3/F;

    return-object v0
.end method

.method public static final synthetic l()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->s:LI3/F;

    return-object v0
.end method

.method public static final synthetic m()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->p:LI3/F;

    return-object v0
.end method

.method public static final synthetic n()LF3/j;
    .locals 1

    sget-object v0, LF3/c;->a:LF3/j;

    return-object v0
.end method

.method public static final synthetic o()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->h:LI3/F;

    return-object v0
.end method

.method public static final synthetic p()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->g:LI3/F;

    return-object v0
.end method

.method public static final synthetic q()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->f:LI3/F;

    return-object v0
.end method

.method public static final synthetic r()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->m:LI3/F;

    return-object v0
.end method

.method public static final synthetic s()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->n:LI3/F;

    return-object v0
.end method

.method public static final synthetic t(I)J
    .locals 2

    invoke-static {p0}, LF3/c;->A(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic u(LD3/l;Ljava/lang/Object;Lu3/l;)Z
    .locals 0

    invoke-static {p0, p1, p2}, LF3/c;->B(LD3/l;Ljava/lang/Object;Lu3/l;)Z

    move-result p0

    return p0
.end method

.method public static final v(JZ)J
    .locals 2

    if-eqz p2, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final w(JI)J
    .locals 2

    int-to-long v0, p2

    const/16 p2, 0x3c

    shl-long/2addr v0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final x(JLF3/j;)LF3/j;
    .locals 7

    new-instance v6, LF3/j;

    invoke-virtual {p2}, LF3/j;->u()LF3/b;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, LF3/j;-><init>(JLF3/j;LF3/b;I)V

    return-object v6
.end method

.method public static final y()LA3/e;
    .locals 1

    sget-object v0, LF3/c$a;->n:LF3/c$a;

    return-object v0
.end method

.method public static final z()LI3/F;
    .locals 1

    sget-object v0, LF3/c;->l:LI3/F;

    return-object v0
.end method
