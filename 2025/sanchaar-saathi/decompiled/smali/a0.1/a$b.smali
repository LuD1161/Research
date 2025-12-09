.class public La0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/b$b;


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
.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lv/h;

    invoke-virtual {p0, p1, p2}, La0/a$b;->c(Lv/h;I)LT/m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lv/h;

    invoke-virtual {p0, p1}, La0/a$b;->d(Lv/h;)I

    move-result p1

    return p1
.end method

.method public c(Lv/h;I)LT/m;
    .locals 0

    invoke-virtual {p1, p2}, Lv/h;->p(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT/m;

    return-object p1
.end method

.method public d(Lv/h;)I
    .locals 0

    invoke-virtual {p1}, Lv/h;->o()I

    move-result p1

    return p1
.end method
