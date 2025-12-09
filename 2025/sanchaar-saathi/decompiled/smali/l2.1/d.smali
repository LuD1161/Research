.class public abstract Ll2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ll2/m;FFF)V
.end method

.method public b(Ll2/m;FFLandroid/graphics/RectF;Ll2/c;)V
    .locals 0

    invoke-interface {p5, p4}, Ll2/c;->a(Landroid/graphics/RectF;)F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ll2/d;->a(Ll2/m;FFF)V

    return-void
.end method
