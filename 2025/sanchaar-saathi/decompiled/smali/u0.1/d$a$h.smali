.class public final Lu0/d$a$h;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/d$a;->update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:Landroid/content/ContentValues;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lu0/d$a$h;->f:Ljava/lang/String;

    iput p2, p0, Lu0/d$a$h;->g:I

    iput-object p3, p0, Lu0/d$a$h;->h:Landroid/content/ContentValues;

    iput-object p4, p0, Lu0/d$a$h;->i:Ljava/lang/String;

    iput-object p5, p0, Lu0/d$a$h;->j:[Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ly0/g;)Ljava/lang/Integer;
    .locals 7

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lu0/d$a$h;->f:Ljava/lang/String;

    iget v3, p0, Lu0/d$a$h;->g:I

    iget-object v4, p0, Lu0/d$a$h;->h:Landroid/content/ContentValues;

    iget-object v5, p0, Lu0/d$a$h;->i:Ljava/lang/String;

    iget-object v6, p0, Lu0/d$a$h;->j:[Ljava/lang/Object;

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Ly0/g;->update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly0/g;

    invoke-virtual {p0, p1}, Lu0/d$a$h;->a(Ly0/g;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
