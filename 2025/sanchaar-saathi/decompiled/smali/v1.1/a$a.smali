.class public abstract Lv1/a$a;
.super Lv1/a$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv1/a$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Looper;Lz1/e;Ljava/lang/Object;Lv1/f$a;Lv1/f$b;)Lv1/a$f;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lv1/a$a;->b(Landroid/content/Context;Landroid/os/Looper;Lz1/e;Ljava/lang/Object;Lw1/d;Lw1/j;)Lv1/a$f;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;Landroid/os/Looper;Lz1/e;Ljava/lang/Object;Lw1/d;Lw1/j;)Lv1/a$f;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "buildClient must be implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
