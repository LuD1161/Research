.class public final synthetic Lu0/d$a$d;
.super Lv3/j;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/d$a;->inTransaction()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final n:Lu0/d$a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/d$a$d;

    invoke-direct {v0}, Lu0/d$a$d;-><init>()V

    sput-object v0, Lu0/d$a$d;->n:Lu0/d$a$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "inTransaction()Z"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Ly0/g;

    const-string v3, "inTransaction"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lv3/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly0/g;

    invoke-virtual {p0, p1}, Lu0/d$a$d;->o(Ly0/g;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ly0/g;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly0/g;->inTransaction()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
