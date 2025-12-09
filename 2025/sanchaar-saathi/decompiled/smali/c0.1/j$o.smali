.class public final Lc0/j$o;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j;->z(ZLl3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:Ljava/lang/Object;

.field public j:I

.field public synthetic k:Z

.field public final synthetic l:Lc0/j;

.field public final synthetic m:I


# direct methods
.method public constructor <init>(Lc0/j;ILl3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$o;->l:Lc0/j;

    iput p2, p0, Lc0/j$o;->m:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Lc0/j$o;->s(ZLl3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 3

    new-instance v0, Lc0/j$o;

    iget-object v1, p0, Lc0/j$o;->l:Lc0/j;

    iget v2, p0, Lc0/j$o;->m:I

    invoke-direct {v0, v1, v2, p2}, Lc0/j$o;-><init>(Lc0/j;ILl3/e;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lc0/j$o;->k:Z

    return-object v0
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/j$o;->j:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lc0/j$o;->i:Ljava/lang/Object;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean v1, p0, Lc0/j$o;->k:Z

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lc0/j$o;->k:Z

    iget-object p1, p0, Lc0/j$o;->l:Lc0/j;

    iput-boolean v1, p0, Lc0/j$o;->k:Z

    iput v3, p0, Lc0/j$o;->j:I

    invoke-static {p1, p0}, Lc0/j;->n(Lc0/j;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    iget-object v1, p0, Lc0/j$o;->l:Lc0/j;

    invoke-static {v1}, Lc0/j;->d(Lc0/j;)Lc0/n;

    move-result-object v1

    iput-object p1, p0, Lc0/j$o;->i:Ljava/lang/Object;

    iput v2, p0, Lc0/j$o;->j:I

    invoke-interface {v1, p0}, Lc0/n;->a(Ll3/e;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_2

    :cond_5
    iget v0, p0, Lc0/j$o;->m:I

    move v4, v0

    move-object v0, p1

    move p1, v4

    :goto_2
    new-instance v1, Lc0/e;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-direct {v1, v0, v2, p1}, Lc0/e;-><init>(Ljava/lang/Object;II)V

    return-object v1
.end method

.method public final s(ZLl3/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lc0/j$o;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$o;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Lc0/j$o;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
