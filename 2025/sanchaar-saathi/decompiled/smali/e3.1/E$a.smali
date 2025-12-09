.class public final Le3/E$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Le3/E$a;

.field public static final b:Lh3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le3/E$a;

    invoke-direct {v0}, Le3/E$a;-><init>()V

    sput-object v0, Le3/E$a;->a:Le3/E$a;

    new-instance v0, Le3/o;

    invoke-direct {v0}, Le3/o;-><init>()V

    invoke-static {v0}, Lh3/e;->a(Lu3/a;)Lh3/d;

    move-result-object v0

    sput-object v0, Le3/E$a;->b:Lh3/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 2

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, p1}, Le3/E;->d(Ljava/lang/String;Le3/H;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static final B(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 2

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, p1}, Le3/E;->i(Ljava/lang/String;Le3/H;)Le3/M;

    move-result-object p0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static final C(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 2

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, p1}, Le3/E;->g(Ljava/util/List;Le3/H;)V

    const/4 p0, 0x0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static final D(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 2

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, p1}, Le3/E;->e(Ljava/util/List;Le3/H;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static final E(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 2

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, p1}, Le3/E;->a(Ljava/util/List;Le3/H;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static final F(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 3

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, v2, p1}, Le3/E;->b(Ljava/lang/String;Ljava/lang/String;Le3/H;)V

    const/4 p0, 0x0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static final G(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 4

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v1, v2}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v3}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, v1, v2, p1}, Le3/E;->j(Ljava/lang/String;JLe3/H;)V

    const/4 p0, 0x0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static final H(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 4

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {v1, v2}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v3}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, v1, v2, p1}, Le3/E;->m(Ljava/lang/String;DLe3/H;)V

    const/4 p0, 0x0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->t(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic b(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->H(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic c(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->C(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic d(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->u(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic e(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->z(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic f(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->B(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic g(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->F(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic h()Le3/m;
    .locals 1

    invoke-static {}, Le3/E$a;->q()Le3/m;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->G(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic j(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->E(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic k(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->A(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic l(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->D(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic m(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->w(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic n(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->v(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic o(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->y(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic p(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/E$a;->x(Le3/E;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static final q()Le3/m;
    .locals 1

    new-instance v0, Le3/m;

    invoke-direct {v0}, Le3/m;-><init>()V

    return-object v0
.end method

.method public static final t(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 3

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, v2, p1}, Le3/E;->o(Ljava/lang/String;Ljava/lang/String;Le3/H;)V

    const/4 p0, 0x0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static final u(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 3

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-static {v1, v2}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v2}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, v1, p1}, Le3/E;->f(Ljava/lang/String;Ljava/util/List;Le3/H;)V

    const/4 p0, 0x0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static final v(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 2

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, p1}, Le3/E;->k(Ljava/lang/String;Le3/H;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static final w(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 2

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, p1}, Le3/E;->h(Ljava/lang/String;Le3/H;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static final x(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 2

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, p1}, Le3/E;->l(Ljava/lang/String;Le3/H;)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static final y(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 3

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v1, v2}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v2}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, v1, p1}, Le3/E;->c(Ljava/lang/String;ZLe3/H;)V

    const/4 p0, 0x0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static final z(Le3/E;Ljava/lang/Object;LY2/a$e;)V
    .locals 2

    const-string v0, "reply"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions"

    invoke-static {p1, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/H;

    :try_start_0
    invoke-interface {p0, v0, p1}, Le3/E;->n(Ljava/lang/String;Le3/H;)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/n;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final r()LY2/h;
    .locals 1

    sget-object v0, Le3/E$a;->b:Lh3/d;

    invoke-interface {v0}, Lh3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY2/h;

    return-object v0
.end method

.method public final s(LY2/b;Le3/E;Ljava/lang/String;)V
    .locals 5

    const-string v0, "binaryMessenger"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageChannelSuffix"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-interface {p1}, LY2/b;->d()LY2/b$c;

    move-result-object v0

    new-instance v1, LY2/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.setBool"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    new-instance v3, Le3/v;

    invoke-direct {v3, p2}, Le3/v;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_1
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.setString"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_2

    new-instance v3, Le3/B;

    invoke-direct {v3, p2}, Le3/B;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_2
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.setInt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_3

    new-instance v3, Le3/C;

    invoke-direct {v3, p2}, Le3/C;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_3
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.setDouble"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_4

    new-instance v3, Le3/D;

    invoke-direct {v3, p2}, Le3/D;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_4
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.setEncodedStringList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_5

    new-instance v3, Le3/p;

    invoke-direct {v3, p2}, Le3/p;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_5
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.setDeprecatedStringList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_6

    new-instance v3, Le3/q;

    invoke-direct {v3, p2}, Le3/q;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_6
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getString"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_7

    new-instance v3, Le3/r;

    invoke-direct {v3, p2}, Le3/r;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_7
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getBool"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_8

    new-instance v3, Le3/s;

    invoke-direct {v3, p2}, Le3/s;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_8

    :cond_8
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_8
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getDouble"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_9

    new-instance v3, Le3/t;

    invoke-direct {v3, p2}, Le3/t;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_9

    :cond_9
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_9
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getInt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_a

    new-instance v3, Le3/u;

    invoke-direct {v3, p2}, Le3/u;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_a

    :cond_a
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_a
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getPlatformEncodedStringList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_b

    new-instance v3, Le3/w;

    invoke-direct {v3, p2}, Le3/w;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_b

    :cond_b
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_b
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getStringList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_c

    new-instance v3, Le3/x;

    invoke-direct {v3, p2}, Le3/x;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_c

    :cond_c
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_c
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.clear"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_d

    new-instance v3, Le3/y;

    invoke-direct {v3, p2}, Le3/y;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_d

    :cond_d
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_d
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getAll"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_e

    new-instance v3, Le3/z;

    invoke-direct {v3, p2}, Le3/z;-><init>(Le3/E;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_e

    :cond_e
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_e
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getKeys"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Le3/E$a;->r()LY2/h;

    move-result-object v3

    invoke-direct {v1, p1, p3, v3, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_f

    new-instance p1, Le3/A;

    invoke-direct {p1, p2}, Le3/A;-><init>(Le3/E;)V

    invoke-virtual {v1, p1}, LY2/a;->e(LY2/a$d;)V

    goto :goto_f

    :cond_f
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_f
    return-void
.end method
