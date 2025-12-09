.class public interface abstract Le3/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# direct methods
.method public static synthetic A(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/c$b;->r(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic B(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    :try_start_0
    invoke-interface {p0, v2, p1}, Le3/c$b;->w(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/c;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2, v0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static C(LY2/b;Le3/c$b;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0, p1}, Le3/c$b;->u(LY2/b;Ljava/lang/String;Le3/c$b;)V

    return-void
.end method

.method public static synthetic D(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-interface {p0, p1}, Le3/c$b;->y(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/c;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2, v0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a()LY2/h;
    .locals 1

    sget-object v0, Le3/c$a;->d:Le3/c$a;

    return-object v0
.end method

.method public static synthetic b(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-interface {p0, v2, p1}, Le3/c$b;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/c;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2, v0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/c$b;->b(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic d(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    :try_start_0
    invoke-interface {p0, v2, p1}, Le3/c$b;->t(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/c;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2, v0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/c$b;->d(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic h(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/c$b;->j(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic i(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/c$b;->p(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic j(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :try_start_0
    invoke-interface {p0, v2, p1}, Le3/c$b;->o(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/c;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2, v0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic l(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-interface {p0, v2, p1}, Le3/c$b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/c;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2, v0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic p(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :try_start_0
    invoke-interface {p0, v2, p1}, Le3/c$b;->n(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/c;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2, v0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic q(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/c$b;->z(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic r(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :try_start_0
    invoke-interface {p0, v2, p1}, Le3/c$b;->f(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/c;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2, v0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic s(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/c$b;->B(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static u(LY2/b;Ljava/lang/String;Le3/c$b;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {p0}, LY2/b;->d()LY2/b$c;

    move-result-object v0

    new-instance v1, LY2/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.remove"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Le3/c$b;->a()LY2/h;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    new-instance v3, Le3/d;

    invoke-direct {v3, p2}, Le3/d;-><init>(Le3/c$b;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_1
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.setBool"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Le3/c$b;->a()LY2/h;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_2

    new-instance v3, Le3/e;

    invoke-direct {v3, p2}, Le3/e;-><init>(Le3/c$b;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_2
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.setString"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Le3/c$b;->a()LY2/h;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_3

    new-instance v3, Le3/f;

    invoke-direct {v3, p2}, Le3/f;-><init>(Le3/c$b;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_3
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.setInt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Le3/c$b;->a()LY2/h;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_4

    new-instance v3, Le3/g;

    invoke-direct {v3, p2}, Le3/g;-><init>(Le3/c$b;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_4
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.setDouble"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Le3/c$b;->a()LY2/h;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_5

    new-instance v3, Le3/h;

    invoke-direct {v3, p2}, Le3/h;-><init>(Le3/c$b;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_5
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.setEncodedStringList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Le3/c$b;->a()LY2/h;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_6

    new-instance v3, Le3/i;

    invoke-direct {v3, p2}, Le3/i;-><init>(Le3/c$b;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_6
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.setDeprecatedStringList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Le3/c$b;->a()LY2/h;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_7

    new-instance v3, Le3/j;

    invoke-direct {v3, p2}, Le3/j;-><init>(Le3/c$b;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_7
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.clear"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Le3/c$b;->a()LY2/h;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_8

    new-instance v3, Le3/k;

    invoke-direct {v3, p2}, Le3/k;-><init>(Le3/c$b;)V

    invoke-virtual {v1, v3}, LY2/a;->e(LY2/a$d;)V

    goto :goto_8

    :cond_8
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_8
    new-instance v1, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.getAll"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Le3/c$b;->a()LY2/h;

    move-result-object v3

    invoke-direct {v1, p0, p1, v3, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_9

    new-instance p0, Le3/l;

    invoke-direct {p0, p2}, Le3/l;-><init>(Le3/c$b;)V

    invoke-virtual {v1, p0}, LY2/a;->e(LY2/a$d;)V

    goto :goto_9

    :cond_9
    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    :goto_9
    return-void
.end method

.method public static synthetic v(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/c$b;->l(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic x(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le3/c$b;->D(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic z(Le3/c$b;Ljava/lang/Object;LY2/a$e;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :try_start_0
    invoke-interface {p0, v2, p1}, Le3/c$b;->g(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le3/c;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2, v0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract f(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;
.end method

.method public abstract g(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
.end method

.method public abstract k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract n(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Boolean;
.end method

.method public abstract o(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Boolean;
.end method

.method public abstract t(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Boolean;
.end method

.method public abstract y(Ljava/lang/String;)Ljava/lang/Boolean;
.end method
