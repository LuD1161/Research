.class public final LD3/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD3/I;


# static fields
.field public static final e:LD3/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD3/i0;

    invoke-direct {v0}, LD3/i0;-><init>()V

    sput-object v0, LD3/i0;->e:LD3/i0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public p()Ll3/i;
    .locals 1

    sget-object v0, Ll3/j;->e:Ll3/j;

    return-object v0
.end method
