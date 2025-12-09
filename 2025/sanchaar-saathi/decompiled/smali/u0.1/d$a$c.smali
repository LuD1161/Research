.class public final Lu0/d$a$c;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/d$a;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lu0/d$a$c;->f:Ljava/lang/String;

    iput-object p2, p0, Lu0/d$a$c;->g:[Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ly0/g;)Ljava/lang/Object;
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu0/d$a$c;->f:Ljava/lang/String;

    iget-object v1, p0, Lu0/d$a$c;->g:[Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ly0/g;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly0/g;

    invoke-virtual {p0, p1}, Lu0/d$a$c;->a(Ly0/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
