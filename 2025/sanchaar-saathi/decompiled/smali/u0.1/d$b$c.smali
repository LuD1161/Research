.class public final Lu0/d$b$c;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/d$b;->executeUpdateDelete()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final f:Lu0/d$b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/d$b$c;

    invoke-direct {v0}, Lu0/d$b$c;-><init>()V

    sput-object v0, Lu0/d$b$c;->f:Lu0/d$b$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ly0/k;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly0/k;->executeUpdateDelete()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly0/k;

    invoke-virtual {p0, p1}, Lu0/d$b$c;->a(Ly0/k;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
