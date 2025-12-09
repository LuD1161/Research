.class public final Le0/d$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le0/d;-><init>(LO3/h;Le0/c;Lu3/p;Lu3/a;ILv3/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final f:Le0/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le0/d$a;

    invoke-direct {v0}, Le0/d$a;-><init>()V

    sput-object v0, Le0/d$a;->f:Le0/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(LO3/r;LO3/h;)Lc0/n;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le0/f;->a(LO3/r;)Lc0/n;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LO3/r;

    check-cast p2, LO3/h;

    invoke-virtual {p0, p1, p2}, Le0/d$a;->a(LO3/r;LO3/h;)Lc0/n;

    move-result-object p1

    return-object p1
.end method
