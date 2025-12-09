.class public final LD3/F$a$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD3/F$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final f:LD3/F$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD3/F$a$a;

    invoke-direct {v0}, LD3/F$a$a;-><init>()V

    sput-object v0, LD3/F$a$a;->f:LD3/F$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ll3/i$b;)LD3/F;
    .locals 1

    instance-of v0, p1, LD3/F;

    if-eqz v0, :cond_0

    check-cast p1, LD3/F;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ll3/i$b;

    invoke-virtual {p0, p1}, LD3/F$a$a;->a(Ll3/i$b;)LD3/F;

    move-result-object p1

    return-object p1
.end method
