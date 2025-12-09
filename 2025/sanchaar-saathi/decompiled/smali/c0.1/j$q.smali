.class public final Lc0/j$q;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j;->A(ZLl3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I

.field public final synthetic j:Lc0/j;

.field public final synthetic k:Z


# direct methods
.method public constructor <init>(Lc0/j;ZLl3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$q;->j:Lc0/j;

    iput-boolean p2, p0, Lc0/j$q;->k:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LD3/I;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Lc0/j$q;->s(LD3/I;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 2

    new-instance p1, Lc0/j$q;

    iget-object v0, p0, Lc0/j$q;->j:Lc0/j;

    iget-boolean v1, p0, Lc0/j$q;->k:Z

    invoke-direct {p1, v0, v1, p2}, Lc0/j$q;-><init>(Lc0/j;ZLl3/e;)V

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/j$q;->i:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc0/j$q;->j:Lc0/j;

    invoke-static {p1}, Lc0/j;->e(Lc0/j;)Lc0/k;

    move-result-object p1

    invoke-virtual {p1}, Lc0/k;->a()Lc0/v;

    move-result-object p1

    instance-of p1, p1, Lc0/l;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lc0/j$q;->j:Lc0/j;

    invoke-static {p1}, Lc0/j;->e(Lc0/j;)Lc0/k;

    move-result-object p1

    invoke-virtual {p1}, Lc0/k;->a()Lc0/v;

    move-result-object p1

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object p1, p0, Lc0/j$q;->j:Lc0/j;

    iput v3, p0, Lc0/j$q;->i:I

    invoke-static {p1, p0}, Lc0/j;->l(Lc0/j;Ll3/e;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    iget-object p1, p0, Lc0/j$q;->j:Lc0/j;

    iget-boolean v1, p0, Lc0/j$q;->k:Z

    iput v2, p0, Lc0/j$q;->i:I

    invoke-static {p1, v1, p0}, Lc0/j;->m(Lc0/j;ZLl3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Lc0/v;

    :goto_2
    return-object p1

    :goto_3
    new-instance v0, Lc0/q;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lc0/q;-><init>(Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public final s(LD3/I;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc0/j$q;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$q;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Lc0/j$q;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
