.class public final LP3/g$a$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP3/g$a;->f(Ljava/net/URL;)Lh3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final f:LP3/g$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LP3/g$a$a;

    invoke-direct {v0}, LP3/g$a$a;-><init>()V

    sput-object v0, LP3/g$a$a;->f:LP3/g$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(LP3/h;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "entry"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LP3/g;->m()LP3/g$a;

    move-result-object v0

    invoke-virtual {p1}, LP3/h;->a()LO3/r;

    move-result-object p1

    invoke-static {v0, p1}, LP3/g$a;->a(LP3/g$a;LO3/r;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LP3/h;

    invoke-virtual {p0, p1}, LP3/g$a$a;->a(LP3/h;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
