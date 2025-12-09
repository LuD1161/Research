.class public final LB1/b;
.super Lv1/a$a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv1/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Lz1/e;Ljava/lang/Object;Lw1/d;Lw1/j;)Lv1/a$f;
    .locals 7

    move-object v4, p4

    check-cast v4, Lz1/u;

    new-instance p4, LB1/e;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, LB1/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lz1/e;Lz1/u;Lw1/d;Lw1/j;)V

    return-object p4
.end method
