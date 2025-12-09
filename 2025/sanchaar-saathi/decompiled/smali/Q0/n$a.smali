.class public final LQ0/n$a;
.super LQ0/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQ0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    const-string v0, "workerClass"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repeatIntervalTimeUnit"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, LQ0/u$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0}, LQ0/u$a;->g()LZ0/u;

    move-result-object p1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, LZ0/u;->i(J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()LQ0/u;
    .locals 1

    invoke-virtual {p0}, LQ0/n$a;->j()LQ0/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f()LQ0/u$a;
    .locals 1

    invoke-virtual {p0}, LQ0/n$a;->k()LQ0/n$a;

    move-result-object v0

    return-object v0
.end method

.method public j()LQ0/n;
    .locals 2

    invoke-virtual {p0}, LQ0/u$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LQ0/u$a;->g()LZ0/u;

    move-result-object v0

    iget-object v0, v0, LZ0/u;->j:LQ0/b;

    invoke-virtual {v0}, LQ0/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, LQ0/u$a;->g()LZ0/u;

    move-result-object v0

    iget-boolean v0, v0, LZ0/u;->q:Z

    if-nez v0, :cond_2

    new-instance v0, LQ0/n;

    invoke-direct {v0, p0}, LQ0/n;-><init>(LQ0/n$a;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PeriodicWorkRequests cannot be expedited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()LQ0/n$a;
    .locals 0

    return-object p0
.end method
