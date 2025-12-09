.class public final Lc0/j$y;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j;->C(Ljava/lang/Object;ZLl3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:Ljava/lang/Object;

.field public j:I

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lv3/u;

.field public final synthetic m:Lc0/j;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Z


# direct methods
.method public constructor <init>(Lv3/u;Lc0/j;Ljava/lang/Object;ZLl3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$y;->l:Lv3/u;

    iput-object p2, p0, Lc0/j$y;->m:Lc0/j;

    iput-object p3, p0, Lc0/j$y;->n:Ljava/lang/Object;

    iput-boolean p4, p0, Lc0/j$y;->o:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc0/B;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Lc0/j$y;->s(Lc0/B;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 7

    new-instance v6, Lc0/j$y;

    iget-object v1, p0, Lc0/j$y;->l:Lv3/u;

    iget-object v2, p0, Lc0/j$y;->m:Lc0/j;

    iget-object v3, p0, Lc0/j$y;->n:Ljava/lang/Object;

    iget-boolean v4, p0, Lc0/j$y;->o:Z

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc0/j$y;-><init>(Lv3/u;Lc0/j;Ljava/lang/Object;ZLl3/e;)V

    iput-object p1, v6, Lc0/j$y;->k:Ljava/lang/Object;

    return-object v6
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/j$y;->j:I

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
    iget-object v1, p0, Lc0/j$y;->i:Ljava/lang/Object;

    check-cast v1, Lv3/u;

    iget-object v3, p0, Lc0/j$y;->k:Ljava/lang/Object;

    check-cast v3, Lc0/B;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc0/j$y;->k:Ljava/lang/Object;

    check-cast p1, Lc0/B;

    iget-object v1, p0, Lc0/j$y;->l:Lv3/u;

    iget-object v4, p0, Lc0/j$y;->m:Lc0/j;

    invoke-static {v4}, Lc0/j;->d(Lc0/j;)Lc0/n;

    move-result-object v4

    iput-object p1, p0, Lc0/j$y;->k:Ljava/lang/Object;

    iput-object v1, p0, Lc0/j$y;->i:Ljava/lang/Object;

    iput v3, p0, Lc0/j$y;->j:I

    invoke-interface {v4, p0}, Lc0/n;->e(Ll3/e;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v5, v3

    move-object v3, p1

    move-object p1, v5

    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v1, Lv3/u;->e:I

    iget-object p1, p0, Lc0/j$y;->n:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lc0/j$y;->k:Ljava/lang/Object;

    iput-object v1, p0, Lc0/j$y;->i:Ljava/lang/Object;

    iput v2, p0, Lc0/j$y;->j:I

    invoke-interface {v3, p1, p0}, Lc0/B;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    iget-boolean p1, p0, Lc0/j$y;->o:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lc0/j$y;->m:Lc0/j;

    invoke-static {p1}, Lc0/j;->e(Lc0/j;)Lc0/k;

    move-result-object p1

    new-instance v0, Lc0/e;

    iget-object v1, p0, Lc0/j$y;->n:Ljava/lang/Object;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lc0/j$y;->l:Lv3/u;

    iget v3, v3, Lv3/u;->e:I

    invoke-direct {v0, v1, v2, v3}, Lc0/e;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p1, v0}, Lc0/k;->c(Lc0/v;)Lc0/v;

    :cond_6
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public final s(Lc0/B;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc0/j$y;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$y;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Lc0/j$y;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
