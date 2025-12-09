.class public final Le3/I$a;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3/I;->g(Ljava/util/List;Le3/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I

.field public final synthetic j:Le3/I;

.field public final synthetic k:Ljava/util/List;


# direct methods
.method public constructor <init>(Le3/I;Ljava/util/List;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Le3/I$a;->j:Le3/I;

    iput-object p2, p0, Le3/I$a;->k:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LD3/I;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Le3/I$a;->s(LD3/I;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 2

    new-instance p1, Le3/I$a;

    iget-object v0, p0, Le3/I$a;->j:Le3/I;

    iget-object v1, p0, Le3/I$a;->k:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le3/I$a;-><init>(Le3/I;Ljava/util/List;Ll3/e;)V

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Le3/I$a;->i:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Le3/I$a;->j:Le3/I;

    invoke-static {p1}, Le3/I;->q(Le3/I;)Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    const-string p1, "context"

    invoke-static {p1}, Lv3/l;->n(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-static {p1}, Le3/J;->a(Landroid/content/Context;)Lc0/h;

    move-result-object p1

    new-instance v3, Le3/I$a$a;

    iget-object v4, p0, Le3/I$a;->k:Ljava/util/List;

    invoke-direct {v3, v4, v1}, Le3/I$a$a;-><init>(Ljava/util/List;Ll3/e;)V

    iput v2, p0, Le3/I$a;->i:I

    invoke-static {p1, v3, p0}, Lg0/i;->a(Lc0/h;Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1
.end method

.method public final s(LD3/I;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le3/I$a;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Le3/I$a;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Le3/I$a;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
