.class public abstract LQ0/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQ0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;

.field public b:Z

.field public c:Ljava/util/UUID;

.field public d:LZ0/u;

.field public final e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4

    const-string v0, "workerClass"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ0/u$a;->a:Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, LQ0/u$a;->c:Ljava/util/UUID;

    new-instance v0, LZ0/u;

    iget-object v1, p0, LQ0/u$a;->c:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id.toString()"

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "workerClass.name"

    invoke-static {v2, v3}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, LZ0/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LQ0/u$a;->d:LZ0/u;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Li3/G;->e([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LQ0/u$a;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()LQ0/u;
    .locals 5

    invoke-virtual {p0}, LQ0/u$a;->b()LQ0/u;

    move-result-object v0

    iget-object v1, p0, LQ0/u$a;->d:LZ0/u;

    iget-object v1, v1, LZ0/u;->j:LQ0/b;

    invoke-virtual {v1}, LQ0/b;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, LQ0/b;->f()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, LQ0/b;->g()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, LQ0/b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, LQ0/u$a;->d:LZ0/u;

    iget-boolean v3, v2, LZ0/u;->q:Z

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    iget-wide v1, v2, LZ0/u;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs cannot be delayed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID()"

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, LQ0/u$a;->i(Ljava/util/UUID;)LQ0/u$a;

    return-object v0
.end method

.method public abstract b()LQ0/u;
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, LQ0/u$a;->b:Z

    return v0
.end method

.method public final d()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, LQ0/u$a;->c:Ljava/util/UUID;

    return-object v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, LQ0/u$a;->e:Ljava/util/Set;

    return-object v0
.end method

.method public abstract f()LQ0/u$a;
.end method

.method public final g()LZ0/u;
    .locals 1

    iget-object v0, p0, LQ0/u$a;->d:LZ0/u;

    return-object v0
.end method

.method public final h(LQ0/b;)LQ0/u$a;
    .locals 1

    const-string v0, "constraints"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LQ0/u$a;->d:LZ0/u;

    iput-object p1, v0, LZ0/u;->j:LQ0/b;

    invoke-virtual {p0}, LQ0/u$a;->f()LQ0/u$a;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/util/UUID;)LQ0/u$a;
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LQ0/u$a;->c:Ljava/util/UUID;

    new-instance v0, LZ0/u;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "id.toString()"

    invoke-static {p1, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, LQ0/u$a;->d:LZ0/u;

    invoke-direct {v0, p1, v1}, LZ0/u;-><init>(Ljava/lang/String;LZ0/u;)V

    iput-object v0, p0, LQ0/u$a;->d:LZ0/u;

    invoke-virtual {p0}, LQ0/u$a;->f()LQ0/u$a;

    move-result-object p1

    return-object p1
.end method
