.class public final LP1/b;
.super Lv1/a$a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv1/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lz1/e;Ljava/lang/Object;Lv1/f$a;Lv1/f$b;)Lv1/a$f;
    .locals 8

    check-cast p4, LP1/a;

    new-instance p4, LQ1/a;

    const/4 v3, 0x1

    invoke-static {p3}, LQ1/a;->l0(Lz1/e;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, LQ1/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLz1/e;Landroid/os/Bundle;Lv1/f$a;Lv1/f$b;)V

    return-object p4
.end method
