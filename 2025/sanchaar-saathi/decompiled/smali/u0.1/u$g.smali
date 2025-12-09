.class public final Lu0/u$g;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/u;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lu0/u;


# direct methods
.method public constructor <init>(Lu0/u;)V
    .locals 0

    iput-object p1, p0, Lu0/u$g;->f:Lu0/u;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ly0/g;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lu0/u$g;->f:Lu0/u;

    invoke-static {p1}, Lu0/u;->a(Lu0/u;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly0/g;

    invoke-virtual {p0, p1}, Lu0/u$g;->a(Ly0/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
