.class public final Le3/I$i;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3/I;->k(Ljava/lang/String;Le3/H;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Le3/I;

.field public final synthetic m:Lv3/w;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le3/I;Lv3/w;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Le3/I$i;->k:Ljava/lang/String;

    iput-object p2, p0, Le3/I$i;->l:Le3/I;

    iput-object p3, p0, Le3/I$i;->m:Lv3/w;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LD3/I;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Le3/I$i;->s(LD3/I;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 3

    new-instance p1, Le3/I$i;

    iget-object v0, p0, Le3/I$i;->k:Ljava/lang/String;

    iget-object v1, p0, Le3/I$i;->l:Le3/I;

    iget-object v2, p0, Le3/I$i;->m:Lv3/w;

    invoke-direct {p1, v0, v1, v2, p2}, Le3/I$i;-><init>(Ljava/lang/String;Le3/I;Lv3/w;Ll3/e;)V

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Le3/I$i;->j:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le3/I$i;->i:Ljava/lang/Object;

    check-cast v0, Lv3/w;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Le3/I$i;->k:Ljava/lang/String;

    invoke-static {p1}, Lg0/h;->g(Ljava/lang/String;)Lg0/f$a;

    move-result-object p1

    iget-object v1, p0, Le3/I$i;->l:Le3/I;

    invoke-static {v1}, Le3/I;->q(Le3/I;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "context"

    invoke-static {v1}, Lv3/l;->n(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_2
    invoke-static {v1}, Le3/J;->a(Landroid/content/Context;)Lc0/h;

    move-result-object v1

    invoke-interface {v1}, Lc0/h;->b()LG3/d;

    move-result-object v1

    new-instance v3, Le3/I$i$a;

    invoke-direct {v3, v1, p1}, Le3/I$i$a;-><init>(LG3/d;Lg0/f$a;)V

    iget-object p1, p0, Le3/I$i;->m:Lv3/w;

    iput-object p1, p0, Le3/I$i;->i:Ljava/lang/Object;

    iput v2, p0, Le3/I$i;->j:I

    invoke-static {v3, p0}, LG3/f;->i(LG3/d;Ll3/e;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    move-object p1, v1

    :goto_0
    iput-object p1, v0, Lv3/w;->e:Ljava/lang/Object;

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public final s(LD3/I;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le3/I$i;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Le3/I$i;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Le3/I$i;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
