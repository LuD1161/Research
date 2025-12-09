.class public final Lt1/b;
.super Lv1/a$a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv1/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lz1/e;Ljava/lang/Object;Lv1/f$a;Lv1/f$b;)Lv1/a$f;
    .locals 6

    new-instance p4, Lcom/google/android/gms/internal/clearcut/P1;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/P1;-><init>(Landroid/content/Context;Landroid/os/Looper;Lz1/e;Lv1/f$a;Lv1/f$b;)V

    return-object p4
.end method
