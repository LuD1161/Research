.class public final Le3/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/a;
.implements Le3/E;


# instance fields
.field public c:Landroid/content/Context;

.field public d:Le3/F;

.field public e:Le3/G;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le3/b;

    invoke-direct {v0}, Le3/b;-><init>()V

    iput-object v0, p0, Le3/I;->e:Le3/G;

    return-void
.end method

.method public static final synthetic p(Le3/I;Ljava/lang/String;Ljava/lang/String;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Le3/I;->t(Ljava/lang/String;Ljava/lang/String;Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Le3/I;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Le3/I;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic r(Le3/I;)Le3/G;
    .locals 0

    iget-object p0, p0, Le3/I;->e:Le3/G;

    return-object p0
.end method

.method public static final synthetic s(Le3/I;Ljava/util/List;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le3/I;->u(Ljava/util/List;Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/List;Le3/H;)Ljava/util/List;
    .locals 1

    const-string v0, "options"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le3/I$g;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Le3/I$g;-><init>(Le3/I;Ljava/util/List;Ll3/e;)V

    const/4 p1, 0x1

    invoke-static {v0, p2, p1, v0}, LD3/g;->d(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Li3/w;->I(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Le3/H;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Le3/I$q;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Le3/I$q;-><init>(Le3/I;Ljava/lang/String;Ljava/lang/String;Ll3/e;)V

    const/4 p1, 0x1

    invoke-static {v0, p3, p1, v0}, LD3/g;->d(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;ZLe3/H;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Le3/I$l;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p0, p2, v0}, Le3/I$l;-><init>(Ljava/lang/String;Le3/I;ZLl3/e;)V

    const/4 p1, 0x1

    invoke-static {v0, p3, p1, v0}, LD3/g;->d(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;Le3/H;)Ljava/util/List;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le3/I;->k(Ljava/lang/String;Le3/H;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const-string v0, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu!"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, p2}, LC3/o;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    invoke-static {p1, v0, v1, v2, p2}, LC3/o;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le3/I;->e:Le3/G;

    invoke-static {p1, v0}, Le3/J;->d(Ljava/lang/Object;Le3/G;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public e(Ljava/util/List;Le3/H;)Ljava/util/Map;
    .locals 1

    const-string v0, "options"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le3/I$c;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Le3/I$c;-><init>(Le3/I;Ljava/util/List;Ll3/e;)V

    const/4 p1, 0x1

    invoke-static {v0, p2, p1, v0}, LD3/g;->d(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/util/List;Le3/H;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Le3/I;->e:Le3/G;

    invoke-interface {p3, p2}, Le3/G;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Le3/I$m;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Le3/I$m;-><init>(Le3/I;Ljava/lang/String;Ljava/lang/String;Ll3/e;)V

    const/4 p1, 0x1

    invoke-static {v0, p3, p1, v0}, LD3/g;->d(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g(Ljava/util/List;Le3/H;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le3/I$a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Le3/I$a;-><init>(Le3/I;Ljava/util/List;Ll3/e;)V

    const/4 p1, 0x1

    invoke-static {v0, p2, p1, v0}, LD3/g;->d(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(Ljava/lang/String;Le3/H;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lv3/w;

    invoke-direct {p2}, Lv3/w;-><init>()V

    new-instance v0, Le3/I$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Le3/I$d;-><init>(Ljava/lang/String;Le3/I;Lv3/w;Ll3/e;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, LD3/g;->d(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p2, Lv3/w;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public i(Ljava/lang/String;Le3/H;)Le3/M;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le3/I;->k(Ljava/lang/String;Le3/H;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const-string v0, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu!"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, p2}, LC3/o;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Le3/M;

    sget-object v0, Le3/K;->h:Le3/K;

    invoke-direct {p2, p1, v0}, Le3/M;-><init>(Ljava/lang/String;Le3/K;)V

    goto :goto_1

    :cond_0
    const-string v0, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    invoke-static {p1, v0, v1, v2, p2}, LC3/o;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Le3/M;

    sget-object v0, Le3/K;->g:Le3/K;

    invoke-direct {p1, p2, v0}, Le3/M;-><init>(Ljava/lang/String;Le3/K;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    :cond_1
    new-instance p1, Le3/M;

    sget-object v0, Le3/K;->i:Le3/K;

    invoke-direct {p1, p2, v0}, Le3/M;-><init>(Ljava/lang/String;Le3/K;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object p2
.end method

.method public j(Ljava/lang/String;JLe3/H;)V
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Le3/I$p;

    const/4 v6, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Le3/I$p;-><init>(Ljava/lang/String;Le3/I;JLl3/e;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p2, p4, p1, p2}, LD3/g;->d(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k(Ljava/lang/String;Le3/H;)Ljava/lang/String;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lv3/w;

    invoke-direct {p2}, Lv3/w;-><init>()V

    new-instance v0, Le3/I$i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Le3/I$i;-><init>(Ljava/lang/String;Le3/I;Lv3/w;Ll3/e;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, LD3/g;->d(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p2, Lv3/w;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public l(Ljava/lang/String;Le3/H;)Ljava/lang/Double;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lv3/w;

    invoke-direct {p2}, Lv3/w;-><init>()V

    new-instance v0, Le3/I$e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Le3/I$e;-><init>(Ljava/lang/String;Le3/I;Lv3/w;Ll3/e;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, LD3/g;->d(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p2, Lv3/w;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public m(Ljava/lang/String;DLe3/H;)V
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Le3/I$n;

    const/4 v6, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Le3/I$n;-><init>(Ljava/lang/String;Le3/I;DLl3/e;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p2, p4, p1, p2}, LD3/g;->d(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n(Ljava/lang/String;Le3/H;)Ljava/lang/Long;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lv3/w;

    invoke-direct {p2}, Lv3/w;-><init>()V

    new-instance v0, Le3/I$f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Le3/I$f;-><init>(Ljava/lang/String;Le3/I;Lv3/w;Ll3/e;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, LD3/g;->d(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p2, Lv3/w;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Le3/H;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Le3/I$o;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Le3/I$o;-><init>(Le3/I;Ljava/lang/String;Ljava/lang/String;Ll3/e;)V

    const/4 p1, 0x1

    invoke-static {v0, p3, p1, v0}, LD3/g;->d(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAttachedToEngine(LT2/a$b;)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object v0

    const-string v1, "getBinaryMessenger(...)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LT2/a$b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Le3/I;->x(LY2/b;Landroid/content/Context;)V

    new-instance v0, Le3/a;

    invoke-direct {v0}, Le3/a;-><init>()V

    invoke-virtual {v0, p1}, Le3/a;->onAttachedToEngine(LT2/a$b;)V

    return-void
.end method

.method public onDetachedFromEngine(LT2/a$b;)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le3/E;->b:Le3/E$a;

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object p1

    const-string v1, "getBinaryMessenger(...)"

    invoke-static {p1, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data_store"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Le3/E$a;->s(LY2/b;Le3/E;Ljava/lang/String;)V

    iget-object p1, p0, Le3/I;->d:Le3/F;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le3/F;->q()V

    :cond_0
    iput-object v2, p0, Le3/I;->d:Le3/F;

    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;Ll3/e;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lg0/h;->g(Ljava/lang/String;)Lg0/f$a;

    move-result-object p1

    iget-object v0, p0, Le3/I;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "context"

    invoke-static {v0}, Lv3/l;->n(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Le3/J;->a(Landroid/content/Context;)Lc0/h;

    move-result-object v0

    new-instance v2, Le3/I$b;

    invoke-direct {v2, p1, p2, v1}, Le3/I$b;-><init>(Lg0/f$a;Ljava/lang/String;Ll3/e;)V

    invoke-static {v0, v2, p3}, Lg0/i;->a(Lc0/h;Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public final u(Ljava/util/List;Ll3/e;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Le3/I$h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le3/I$h;

    iget v1, v0, Le3/I$h;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le3/I$h;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Le3/I$h;

    invoke-direct {v0, p0, p2}, Le3/I$h;-><init>(Le3/I;Ll3/e;)V

    :goto_0
    iget-object p2, v0, Le3/I$h;->m:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Le3/I$h;->o:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le3/I$h;->l:Ljava/lang/Object;

    check-cast p1, Lg0/f$a;

    iget-object v2, v0, Le3/I$h;->k:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Le3/I$h;->j:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v5, v0, Le3/I$h;->i:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    iget-object v6, v0, Le3/I$h;->h:Ljava/lang/Object;

    check-cast v6, Le3/I;

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Le3/I$h;->j:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object v2, v0, Le3/I$h;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v4, v0, Le3/I$h;->h:Ljava/lang/Object;

    check-cast v4, Le3/I;

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li3/w;->L(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p0, v0, Le3/I$h;->h:Ljava/lang/Object;

    iput-object v2, v0, Le3/I$h;->i:Ljava/lang/Object;

    iput-object p1, v0, Le3/I$h;->j:Ljava/lang/Object;

    iput v4, v0, Le3/I$h;->o:I

    invoke-virtual {p0, v0}, Le3/I;->w(Ll3/e;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v4, p0

    :goto_3
    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v5, v2

    move-object v6, v4

    move-object v4, p1

    move-object v2, p2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg0/f$a;

    iput-object v6, v0, Le3/I$h;->h:Ljava/lang/Object;

    iput-object v5, v0, Le3/I$h;->i:Ljava/lang/Object;

    iput-object v4, v0, Le3/I$h;->j:Ljava/lang/Object;

    iput-object v2, v0, Le3/I$h;->k:Ljava/lang/Object;

    iput-object p1, v0, Le3/I$h;->l:Ljava/lang/Object;

    iput v3, v0, Le3/I$h;->o:I

    invoke-virtual {v6, p1, v0}, Le3/I;->v(Lg0/f$a;Ll3/e;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_5
    invoke-virtual {p1}, Lg0/f$a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2, v5}, Le3/J;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v6, Le3/I;->e:Le3/G;

    invoke-static {p2, v7}, Le3/J;->d(Ljava/lang/Object;Le3/G;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lg0/f$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    move-object p1, v4

    :cond_9
    return-object p1
.end method

.method public final v(Lg0/f$a;Ll3/e;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le3/I;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "context"

    invoke-static {v0}, Lv3/l;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Le3/J;->a(Landroid/content/Context;)Lc0/h;

    move-result-object v0

    invoke-interface {v0}, Lc0/h;->b()LG3/d;

    move-result-object v0

    new-instance v1, Le3/I$j;

    invoke-direct {v1, v0, p1}, Le3/I$j;-><init>(LG3/d;Lg0/f$a;)V

    invoke-static {v1, p2}, LG3/f;->i(LG3/d;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final w(Ll3/e;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le3/I;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "context"

    invoke-static {v0}, Lv3/l;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Le3/J;->a(Landroid/content/Context;)Lc0/h;

    move-result-object v0

    invoke-interface {v0}, Lc0/h;->b()LG3/d;

    move-result-object v0

    new-instance v1, Le3/I$k;

    invoke-direct {v1, v0}, Le3/I$k;-><init>(LG3/d;)V

    invoke-static {v1, p1}, LG3/f;->i(LG3/d;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final x(LY2/b;Landroid/content/Context;)V
    .locals 2

    iput-object p2, p0, Le3/I;->c:Landroid/content/Context;

    :try_start_0
    sget-object v0, Le3/E;->b:Le3/E$a;

    const-string v1, "data_store"

    invoke-virtual {v0, p1, p0, v1}, Le3/E$a;->s(LY2/b;Le3/E;Ljava/lang/String;)V

    new-instance v0, Le3/F;

    iget-object v1, p0, Le3/I;->e:Le3/G;

    invoke-direct {v0, p1, p2, v1}, Le3/F;-><init>(LY2/b;Landroid/content/Context;Le3/G;)V

    iput-object v0, p0, Le3/I;->d:Le3/F;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SharedPreferencesPlugin"

    const-string v0, "Received exception while setting up SharedPreferencesPlugin"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
