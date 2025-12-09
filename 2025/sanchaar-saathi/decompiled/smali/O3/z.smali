.class public abstract LO3/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LO3/z$b;
    }
.end annotation


# static fields
.field public static final a:LO3/z$b;

.field public static final b:LO3/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LO3/z$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LO3/z$b;-><init>(Lv3/g;)V

    sput-object v0, LO3/z;->a:LO3/z$b;

    new-instance v0, LO3/z$a;

    invoke-direct {v0}, LO3/z$a;-><init>()V

    sput-object v0, LO3/z;->b:LO3/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
