.class public final Lu0/A$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/A;-><init>(Lu0/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lu0/A;


# direct methods
.method public constructor <init>(Lu0/A;)V
    .locals 0

    iput-object p1, p0, Lu0/A$a;->f:Lu0/A;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ly0/k;
    .locals 1

    iget-object v0, p0, Lu0/A$a;->f:Lu0/A;

    invoke-static {v0}, Lu0/A;->a(Lu0/A;)Ly0/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu0/A$a;->a()Ly0/k;

    move-result-object v0

    return-object v0
.end method
