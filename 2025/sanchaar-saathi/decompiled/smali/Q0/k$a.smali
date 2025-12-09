.class public final LQ0/k$a;
.super LQ0/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQ0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "workerClass"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, LQ0/u$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0}, LQ0/u$a;->g()LZ0/u;

    move-result-object p1

    const-class v0, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, LZ0/u;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic b()LQ0/u;
    .locals 1

    invoke-virtual {p0}, LQ0/k$a;->j()LQ0/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f()LQ0/u$a;
    .locals 1

    invoke-virtual {p0}, LQ0/k$a;->k()LQ0/k$a;

    move-result-object v0

    return-object v0
.end method

.method public j()LQ0/k;
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
    new-instance v0, LQ0/k;

    invoke-direct {v0, p0}, LQ0/k;-><init>(LQ0/k$a;)V

    return-object v0
.end method

.method public k()LQ0/k$a;
    .locals 0

    return-object p0
.end method
