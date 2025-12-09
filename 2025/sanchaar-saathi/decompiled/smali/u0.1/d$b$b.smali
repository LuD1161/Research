.class public final Lu0/d$b$b;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/d$b;->e(Lu3/l;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lu0/d$b;

.field public final synthetic g:Lu3/l;


# direct methods
.method public constructor <init>(Lu0/d$b;Lu3/l;)V
    .locals 0

    iput-object p1, p0, Lu0/d$b$b;->f:Lu0/d$b;

    iput-object p2, p0, Lu0/d$b$b;->g:Lu3/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ly0/g;)Ljava/lang/Object;
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu0/d$b$b;->f:Lu0/d$b;

    invoke-static {v0}, Lu0/d$b;->c(Lu0/d$b;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ly0/g;->compileStatement(Ljava/lang/String;)Ly0/k;

    move-result-object p1

    iget-object v0, p0, Lu0/d$b$b;->f:Lu0/d$b;

    invoke-static {v0, p1}, Lu0/d$b;->b(Lu0/d$b;Ly0/k;)V

    iget-object v0, p0, Lu0/d$b$b;->g:Lu3/l;

    invoke-interface {v0, p1}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly0/g;

    invoke-virtual {p0, p1}, Lu0/d$b$b;->a(Ly0/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
