.class public La0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    check-cast p1, LT/m;

    invoke-virtual {p0, p1, p2}, La0/a$a;->b(LT/m;Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(LT/m;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1, p2}, LT/m;->j(Landroid/graphics/Rect;)V

    return-void
.end method
